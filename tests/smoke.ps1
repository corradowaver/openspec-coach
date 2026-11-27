# Exercises the package and OpenSpec CLI on a clean project (REQ-001, REQ-002, REQ-005).
$ErrorActionPreference = 'Stop'
$repo = Split-Path -Parent $PSScriptRoot
$project = Join-Path ([IO.Path]::GetTempPath()) ("OpenSpec Coach " + [guid]::NewGuid())
$previousLocation = Get-Location
New-Item -ItemType Directory -Path $project | Out-Null
$project = (Resolve-Path -LiteralPath $project).Path
try {
    Set-Location -LiteralPath $project
    $skills = Join-Path $project '.agents/skills'
    New-Item -ItemType Directory -Path $skills -Force | Out-Null
    Copy-Item -LiteralPath (Join-Path $repo 'skills/openspec-coach') -Destination $skills -Recurse
    foreach ($file in 'SKILL.md', 'agents/openai.yaml', 'references/setup-and-recovery.md') {
        if (!(Test-Path -LiteralPath (Join-Path $skills "openspec-coach/$file") -PathType Leaf)) {
            throw "Installed package is missing $file"
        }
    }

    $before = openspec list --json | ConvertFrom-Json
    if ($before.root -or 'no_openspec_root' -notin $before.status.code) {
        throw 'Expected the disposable project to be uninitialized.'
    }
    openspec init --tools none --no-animation
    if ($LASTEXITCODE -ne 0) { throw 'OpenSpec initialization failed.' }
    openspec new change smoke-check
    if ($LASTEXITCODE -ne 0) { throw 'OpenSpec change creation failed.' }

    $after = openspec list --json | ConvertFrom-Json
    if ($LASTEXITCODE -ne 0 -or !$after.root.path -or !$after.changes.name.Contains('smoke-check')) {
        throw 'OpenSpec did not find the new change from the project path containing spaces.'
    }
    $status = openspec status --change smoke-check --json | ConvertFrom-Json
    if ($LASTEXITCODE -ne 0 -or !(Test-Path -LiteralPath $status.changeRoot -PathType Container)) {
        throw 'OpenSpec did not return a usable absolute change path.'
    }
    Write-Output 'Package placement and OpenSpec context resolution passed.'
} finally {
    Set-Location -LiteralPath $previousLocation.Path
    $tempRoot = (Resolve-Path -LiteralPath ([IO.Path]::GetTempPath())).Path
    if ((Split-Path -Parent $project) -eq $tempRoot.TrimEnd([IO.Path]::DirectorySeparatorChar)) {
        Remove-Item -LiteralPath $project -Recurse -Force
    }
}

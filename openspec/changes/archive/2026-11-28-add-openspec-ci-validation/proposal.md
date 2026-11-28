# Proposal

## Why

GitHub Actions currently exercises skill installation and OpenSpec CLI usage in a disposable project, so malformed OpenSpec artifacts in this repository can pass CI. Validate those artifacts on pushes and pull requests so contributors can correct problems before merging.

## What Changes

- Report strict OpenSpec validation failures for main specifications and active changes in CI.
- Report incomplete tasks in archived changes through a separate OpenSpec check.
- Retain the existing skill smoke checks on Linux, Windows, and macOS.

## Capabilities

### New Capabilities

None. This change adds repository tooling only.

### Modified Capabilities

None. The Coach's behavior and product requirements stay the same.

## Impact

The existing GitHub Actions workflow gains two validation steps. This change does not add release publishing, custom project lints, or new dependencies.

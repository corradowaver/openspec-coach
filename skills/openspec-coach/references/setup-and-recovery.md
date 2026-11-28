# Setup and recovery

- If the CLI is missing, leave project setup status unknown. Use the applicable OpenSpec installation command, such as `npm install -g @fission-ai/openspec` if npm and a supported Node.js version are available. If that prerequisite is missing, ask for the platform or identify the next verified setup step.
- If a working CLI confirms there is no project root and no declared store failure, suggest `openspec init --tools codex` if supported by the installed version. Use `openspec init --help` to check options.
- If a store declaration is invalid or unresolved, explain the CLI message and use its recovery guidance. For an explicitly named store, resolve the ID with `openspec store list --json` and preserve `--store "<id>"` where the CLI supports it. Keep lookup errors distinct from missing files.
- If the relevant OpenSpec skill is absent, use a verified CLI alternative only if it performs the same action or clearly identify what it does. For example, `openspec instructions` displays instructions and does not create an artifact. Recommend installing the workflow integration if a suitable action is unavailable.
- Trust explicit OpenSpec dependency and skip information over a guessed artifact order. A status query that fails or reports conflicting data calls for diagnosis before recommending a workflow transition.

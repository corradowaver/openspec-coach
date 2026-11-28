# Tasks

## 1. Skill package and first use

- [x] 1.1 Create the compact skill with Codex discovery metadata and document installation and explicit invocation. Install the folder in a clean Codex project and verify the skill is discoverable (REQ-001).
- [x] 1.2 Add first-use orientation and setup guidance. Exercise missing CLI and uninitialized project cases and confirm each yields one appropriate command (REQ-002).

## 2. Recommendations and recovery

- [x] 2.1 Implement the brief response format and command selection. Verify a newcomer receives one to three sentences in their language, one usable command and a reason, and familiar terms receive less explanation (REQ-003, REQ-006).
- [x] 2.2 Add prerequisite guidance. Exercise an early implementation request, a confirmed omission and an optional or ambiguous missing artifact. Verify wording and the recovery action for each (REQ-004).
- [x] 2.3 Use current OpenSpec context on resumption. Verify explicit and ambiguous change selection, a custom schema and a return to planning using the actual available workflows (REQ-005).
- [x] 2.4 Add completion guidance. Verify the Coach labels optional verification accurately and gives a completion command when applicable (REQ-007).

## 3. End-to-end acceptance

- [x] 3.1 Follow the guidance from idea to archive in a disposable project. Record which commands the user invoked and confirm Coach itself produced only guidance.

  Acceptance evidence (2026-11-28, OpenSpec 2.2.0): In a disposable project, the installed Coach recommended the proposal and apply skills, then `openspec archive add-csv-export`. The test driver ran `openspec init --tools codex --no-animation` and `openspec new change add-csv-export`, prepared and implemented the small fixture, then ran `openspec validate --all --strict --no-interactive`, `openspec archive add-csv-export --yes`, and `openspec validate --archived`. The main spec was created and the archived task passed validation. The driver supplied actual read-only CLI results because the separate Codex session could not launch a shell. Workspace file hashes were unchanged during each Coach turn, and Coach issued guidance only.
- [x] 3.2 Exercise installation and context resolution in Windows CI with a workspace path containing spaces. Check that documented commands and path handling also work with macOS and Linux conventions. [CI evidence: smoke passed on Windows, macOS, and Linux](https://github.com/corradowaver/openspec-coach/actions/runs/46134375327).

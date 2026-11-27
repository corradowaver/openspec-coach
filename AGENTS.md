# Repository Instructions

## Language

- Use English for all project artifacts: documentation, saved plans, OpenSpec artifacts, decision log entries, code identifiers, comments, test descriptions, commit messages, and pull request titles and descriptions.
## OpenSpec Workflow

- Perform product changes within an active OpenSpec change.
- Before implementation, read the applicable project instructions, OpenSpec configuration, the active change's status, planning artifacts, and tasks.
- Follow the change's resolved schema and dependencies. Distinguish required prerequisites from recommendations; do not impose a fixed sequence or claim that a step was skipped without evidence.
- When requirements or implementation decisions change, update the affected artifacts of the active change.
- Track task progress in OpenSpec. Do not maintain a parallel task checklist or progress tracker.
- Treat repository instruction updates and initial tooling setup as workflow maintenance; do not invent product requirements solely to document them.

## Requirements and Task Traceability

- Use specification references to explain behavior and OpenSpec task references to preserve implementation history.
- Assign stable, project-unique IDs to requirements, for example `REQ-001`, while preserving OpenSpec's required document structure. These IDs are a project convention, not a built-in OpenSpec feature. Do not renumber or reuse IDs; preserve them when syncing delta specs into main specs or archiving a change.
- In tests that verify specified behavior, reference the relevant requirement ID and, where applicable, the scenario name or stable scenario ID. Put references in test descriptions or nearby comments. Do not invent requirements solely to label internal helper tests.
- In code, reference a requirement only when it helps explain a non-obvious behavior or constraint. Do not add task markers or specification comments to every changed block.
- Where practical, include a repository-relative specification path with the requirement ID. Use the active change's spec while the requirement is pending; update live code and test references to the main spec after synchronization. Keep references accurate when specifications move.
- When creating commits containing code or test changes, include the change name and relevant task IDs together, for example `add-openspec:2.1`. For deletions, identify the affected path when needed to make the association clear. This rule does not authorize creating commits without user authorization.
- Keep task IDs stable once referenced in history. Do not renumber existing tasks or reuse their IDs for different work; assign new IDs to new tasks.

## Decision Log

- Maintain a repository-level decision log at `docs/decision-log.md`. Create it when the first material decision is recorded.
- Record material decisions affecting product scope, observable behavior, architecture, dependencies, compatibility, or the development workflow.
- Record decisions when adopted or changed. Do not present proposals, assumptions, or unresolved questions as accepted decisions.
- Each entry must include a stable ID (`DEC-001`, `DEC-002`, ...), date (`YYYY-MM-DD`), title, status (`accepted` or `superseded`), context, decision, rationale, and consequences or trade-offs.
- Link to the relevant OpenSpec change and artifacts when applicable. For workflow maintenance without a change, state that explicitly.
- Keep entries concise and link to detailed reasoning in OpenSpec artifacts rather than duplicating it. The log records decisions and rationale; OpenSpec remains the source of truth for requirements and task progress.
- Preserve history. When replacing a decision, add a new entry, mark the old entry as superseded, and cross-reference both entries.
- When archiving a change, update affected decision log links to the archived artifacts.
- Do not log routine edits, task completion, or every implementation detail.

## Testing and Verification

- Preserve repository quality gates. This workflow does not require new specifications solely for QA or authorize unrelated actions.
- Before reporting completion, run the checks appropriate to the change and inspect their actual results. Distinguish passed, failed, and not-run checks, and disclose remaining limitations.

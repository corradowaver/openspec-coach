# Decision Log

## DEC-001 Narrative guidance with user-run commands

- Date: 2026-11-27
- Status: accepted
- Context: A first-time OpenSpec user needs to understand the next action while learning the commands.
- Decision: Coach gives one concrete command for the user to run and limits guidance to one to three sentences. An early implementation request receives prerequisite guidance. Historical skip language requires evidence.
- Rationale: The user stays in control of workflow actions and can distinguish a pending requirement from a confirmed omission.
- Consequences: Coach depends on current OpenSpec evidence and may need one clarification when that evidence is incomplete.
- OpenSpec change: [create-base-coach-structure](../openspec/changes/archive/2026-11-28-create-base-coach-structure/specs/workflow-guidance/spec.md)

## DEC-002 Validate OpenSpec artifacts in CI

- Date: 2026-11-28
- Status: accepted
- Context: The smoke workflow exercises installation and CLI usage in a disposable project. Repository specifications and archive task completion need their own checks.
- Decision: Run strict OpenSpec validation and the separate archive task check on the Linux matrix job using its pinned CLI. Resolve the archive baseline before enabling the checks.
- Rationale: The built-in checks cover document structure and archived task completion. One runner is sufficient for these repository checks.
- Consequences: OpenSpec warnings and incomplete archived tasks will fail CI. The existing smoke matrix continues to cover platform behavior.
- OpenSpec change: [add-openspec-ci-validation](../openspec/changes/add-openspec-ci-validation/proposal.md)

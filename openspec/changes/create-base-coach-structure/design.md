# Design

## Context

The repository contains project instructions and an OpenSpec workspace. The deliverable is a reusable instruction package for Codex. See [the proposal](proposal.md) for the intended user experience.

## Goals / Non-Goals

Keep ordinary coaching turns small and portable. The user runs each suggested workflow command. Continuous monitoring, personal progress storage and autonomous execution are outside scope.

## Decisions

- Put activation criteria and the common response rules in `skills/openspec-coach/SKILL.md`. Load a short reference only for uncommon setup or recovery cases. A separate executable would add an installation dependency without improving the normal interaction.
- On invocation, inspect CLI availability and use `openspec list --json` to resolve the root and active changes. Follow a named or unambiguous change with `openspec status --change <name> --json` and the relevant artifact or apply instructions. Respect project guidance, intentional skips and actual local skill availability. Use paths returned by OpenSpec across operating systems, including Windows paths containing spaces.
- Recommend a concrete Codex skill invocation or terminal command, substituting the real change name. If an essential input is unknown, ask one focused question. Use setup or diagnostic guidance when the root cannot be resolved, distinguishing a missing CLI, a missing root and a broken store reference.
- Interpret artifact presence as current state. A downstream file alongside a missing prerequisite can also result from deletion or revision. Reserve historical skip language for evidence establishing order and obligation at that time. Otherwise name the current prerequisite. Offer verification as a workflow action when available.
- Use conversational context for familiarity and language, and OpenSpec for persistent change state. A separate learner profile would require managing personal history across projects.

## Risks / Trade-offs

- CLI and skill names vary by installation. Inspect available workflows before recommending a command.
- A concise reply can hide uncertainty. Use the available sentence budget for one clarifying question when it affects the next action.
- Implicit activation depends on Codex matching the description. Document explicit invocation as the predictable entry point.

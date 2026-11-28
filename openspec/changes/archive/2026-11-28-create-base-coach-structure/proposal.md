# Proposal

## Why

A newcomer bringing a real task to Codex needs to know where work stands, which command to run and why. OpenSpec exposes workflow state, but interpreting dependencies and choosing an available action still requires familiarity with the project.

## What Changes

- Ship an installable Codex skill that guides the user from setup through completion in one to three sentences per reply.
- Recommend one available command for the user to run, based on the selected change, its schema and project instructions.
- Explain missing prerequisites and confirmed omissions, resume from current OpenSpec state, and shorten familiar explanations.

## Capabilities

### New Capabilities

- `workflow-guidance` covers orientation, command selection and recovery on a real OpenSpec task.

### Modified Capabilities

## Impact

Adds the planned skill under `skills/openspec-coach/` and installation guidance for Codex users. The package uses existing OpenSpec and Codex interfaces. Background monitoring, change execution and product quality assessment are outside this change.

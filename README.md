# OpenSpec Coach

OpenSpec Coach is a Codex skill for people learning OpenSpec on a real project. It reads your current workflow state and suggests one command for you to run, with a brief explanation.

## Install

Copy the entire `skills/openspec-coach` folder to `.agents/skills/` in your project, or to `~/.agents/skills/` for your user account. The installed path should end in `openspec-coach/SKILL.md`. Include the `agents` and `references` folders. Start a new Codex conversation in your project if the skill does not appear immediately.

OpenSpec CLI and its Codex workflow skills provide the underlying workflow. Coach can guide you through setup if either is missing.

## Use

In Codex, enter:

```text
$openspec-coach I want to add CSV export. What should I do first?
```

When resuming work, mention the change name if you have several active changes. Codex can also select Coach automatically from its description. You run the workflow commands it recommends.

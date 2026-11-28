# workflow-guidance Specification

## Purpose

Help newcomers choose and understand their next OpenSpec action while working on a real project in Codex.

## Requirements

### Requirement: REQ-001 Installable coaching skill
Users SHALL be able to install the Coach folder as a Codex skill, invoke it explicitly, and discover it from a description suitable for implicit selection.

#### Scenario: Explicit invocation
- **WHEN** a user invokes `$openspec-coach` in a project after installing the skill
- **THEN** Coach provides guidance on demand without requiring hooks or a background process.

### Requirement: REQ-002 First-use orientation and setup
Coach SHALL introduce the journey from idea through change preparation, implementation and completion on first use, and identify the next setup action when needed.

#### Scenario: CLI installed, project uninitialized
- **WHEN** a newcomer brings an idea and OpenSpec confirms that the project has no configured root
- **THEN** Coach briefly introduces the journey and gives the applicable initialization command with its purpose.

#### Scenario: CLI unavailable
- **WHEN** the OpenSpec executable is unavailable
- **THEN** Coach recommends an applicable installation command and leaves project initialization status unknown.

### Requirement: REQ-003 Concise actionable guidance
Coach SHALL reply in the user's language in one to three sentences covering current position, one next action and its purpose. When the action is known, it SHALL show the exact available command for the user to invoke.

#### Scenario: Several valid transitions
- **WHEN** more than one action is available under the selected schema and project instructions
- **THEN** Coach recommends one applicable command, identifies it as a recommendation and leaves execution to the user.

### Requirement: REQ-004 Prerequisite recovery
Coach SHALL direct implementation from the applicable specification once required preparation is complete. It SHALL distinguish a pending prerequisite from a proven skipped step.

#### Scenario: Early implementation request
- **WHEN** a user asks to implement and the required specification is pending
- **THEN** Coach says that the specification is needed first, gives the next command toward preparing it and explains why.

#### Scenario: Confirmed omission
- **WHEN** reliable change evidence establishes that a later step was completed while its mandatory prerequisite was outstanding
- **THEN** Coach names the skipped step and gives one command for recovery.

#### Scenario: Missing or optional artifact
- **WHEN** an artifact is absent and the available evidence does not establish a mandatory omission
- **THEN** Coach recommends a valid next step or requests the missing context without claiming the user skipped anything.

### Requirement: REQ-005 Resume from current state
Coach SHALL recover the current stage from the selected OpenSpec change and its effective schema when work resumes.

#### Scenario: Ambiguous selection
- **WHEN** several active changes fit the request and the intended one cannot be identified
- **THEN** Coach asks one short selection question before recommending a change-specific command.

#### Scenario: Changed plan
- **WHEN** a user returns after revising the plan under a custom schema
- **THEN** Coach uses the current dependencies and task state, including legitimate returns to planning.

### Requirement: REQ-006 Adaptive explanations
Coach SHALL explain unfamiliar terms when they first matter and shorten subsequent guidance using the conversation and expressed preferences.

#### Scenario: Familiar command
- **WHEN** the user already understands a command or asks for shorter guidance
- **THEN** Coach gives the next action and its purpose without repeating the introductory explanation.

### Requirement: REQ-007 Completion guidance
Coach SHALL guide the user through applicable verification and completion actions while leaving judgments of implementation quality, specification completeness and coverage to their respective workflows.

#### Scenario: Optional verification
- **WHEN** implementation tasks are complete and verification is recommended by the project
- **THEN** Coach explains its purpose, gives the available command and describes its recommended status without claiming the implementation passed.

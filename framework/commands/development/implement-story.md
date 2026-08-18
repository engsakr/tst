---
id: development-implement-story
name: Implement Story
description: Implement an approved story inside a service repository using runtime context and governance standards.
agent: developer
lifecycle_stage: development
artifact_type: implementation-guidance
version: 1.0.0
---

# Implement Story

## Purpose

Guide code changes so implementation remains scoped, tested, and aligned with service and project standards.

## Use This Command When

- You are inside a service repository.
- A specific approved story is ready for development.
- AGENTS.md and sdlc.service.yml have been materialized.

## Required Inputs

- Story file path.
- AGENTS.md, AI_CONTEXT.md, and sdlc.service.yml.
- Existing service code and tests.
- Relevant governance standards.

## Context To Read First

- AGENTS.md
- AI_CONTEXT.md
- sdlc.service.yml
- Related story under governance lifecycle/05-backlog/
- Relevant standards from governance repo
- Existing code and tests.

## Operating Procedure

1. Read runtime files and the story before editing.
2. Map acceptance criteria to code and tests.
3. Inspect existing patterns and choose the smallest safe change.
4. Implement the scoped change.
5. Add or update tests for each behavior change.
6. Run configured validation commands when available.
7. Report summary, files changed, tests, risks, and open questions.

## Output Format

Produce Markdown with these sections:

- Implementation Summary
- Acceptance Criteria Coverage
- Files Changed
- Tests Added or Updated
- Validation Commands and Results
- Risks
- Open Questions

## Quality Checklist

- No unrelated refactors.
- Tests cover behavior changes.
- Errors and edge cases are handled.
- Code follows existing patterns and standards.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.
- Do not modify generated runtime files unless the story explicitly requires it.
- Do not silently skip tests; report if tests cannot run.

## Done Criteria

- Story acceptance criteria are implemented or exceptions are documented.
- Tests are updated.
- Validation status is reported.

## Evidence Handling

- Cite source artifacts by path when making a claim.
- If evidence is missing, create an open question instead of filling the gap with an assumption.
- Keep assumptions separate from confirmed requirements, decisions, or validation results.
- When reviewing, classify evidence as present, missing, conflicting, or not applicable.
- When generating an artifact, include enough traceability for the next lifecycle role to continue without rereading the full conversation.

## Self-Review Questions

- Did I read the required context before producing output?
- Did I distinguish facts, assumptions, risks, decisions, and open questions?
- Is every required change actionable by a clear role?
- Can the next lifecycle stage use this output without guessing?
- Have I avoided approving decisions that require human ownership?

## Common Failure Modes

- Producing a polished artifact that hides unresolved questions.
- Mixing recommendations with approved decisions.
- Skipping standards because the input sounded straightforward.
- Writing generic advice that does not point to the artifact, service, or lifecycle stage.
- Treating AI qualitative review as a replacement for script checks, tests, or human approval.

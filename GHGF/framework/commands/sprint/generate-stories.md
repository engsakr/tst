---
id: sprint-generate-stories
name: Generate Stories
description: Generate implementation-ready stories from PRD, architecture, and standards.
agent: scrum-planner
lifecycle_stage: sprint-readiness
artifact_type: story-set
version: 1.0.0
---

# Generate Stories

## Purpose

Convert approved requirements and architecture into small, testable work items.

## Use This Command When

- PRD and architecture are approved enough for backlog creation.
- The team needs story drafts for refinement.
- A feature needs slicing into implementable increments.

## Required Inputs

- PRD, HLD/LLD/ADRs, business rules, standards, and service catalog.
- Any existing story format or naming convention.

## Context To Read First

- lifecycle/03-requirements/prd.md
- lifecycle/04-architecture/
- standards/backend/
- standards/qa/
- services.yml

## Operating Procedure

1. Identify product capabilities and technical work from requirements and architecture.
2. Slice stories by user value, risk, integration boundaries, and testability.
3. Write story statement, acceptance criteria, implementation notes, test notes, dependencies, and risks.
4. Avoid bundling unrelated changes.
5. Flag stories that require decisions or architecture follow-up.
6. Recommend story order.

## Output Format

Produce Markdown with these sections:

- Story List
- Per-Story Title and ID
- Story Statement
- Acceptance Criteria
- Implementation Notes
- Test Notes
- Dependencies
- Risks and Open Questions
- Suggested Order

## Quality Checklist

- Stories are independently understandable.
- Acceptance criteria are testable.
- Dependencies are explicit.
- Stories are small enough for sprint planning.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Stories can enter refinement.
- Blocked stories are clearly marked.
- QA can derive test cases.

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

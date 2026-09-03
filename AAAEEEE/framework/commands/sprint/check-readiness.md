---
id: sprint-check-readiness
name: Check Sprint Readiness
description: Check whether stories and sprint scope meet Definition of Ready.
agent: scrum-planner
lifecycle_stage: sprint-readiness
artifact_type: readiness-review
version: 1.0.0
---

# Check Sprint Readiness

## Purpose

Prevent unclear, oversized, or blocked work from entering sprint execution.

## Use This Command When

- Sprint planning is about to start or finish.
- A sprint-readiness gate is being prepared.
- Stories need a readiness audit.

## Required Inputs

- Sprint plan.
- Stories selected for sprint.
- PRD, architecture, dependencies, and approval status.

## Context To Read First

- lifecycle/06-sprint-planning/sprint-plan.md
- lifecycle/05-backlog/
- lifecycle/03-requirements/prd.md
- lifecycle/04-architecture/hld.md
- sprint-readiness-gate.yml

## Operating Procedure

1. List candidate stories and readiness criteria.
2. Check acceptance criteria, dependencies, designs, test notes, and approvals.
3. Classify each story as ready, needs refinement, blocked, or defer.
4. Identify sprint-level risks.
5. Recommend required actions before sprint start.
6. Summarize readiness status.

## Output Format

Produce Markdown with these sections:

- Summary
- Story Readiness Table
- Blockers
- Required Refinements
- Dependencies
- Risks
- Recommendation

## Quality Checklist

- Readiness criteria are explicit.
- Blocked stories are not marked ready.
- Actions are assigned to artifact owners when possible.
- Recommendation is practical.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Sprint readiness is clear.
- Required refinements are actionable.
- Gate validation can proceed or blockers are known.

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

---
id: sprint-plan
name: Plan Sprint
description: Create a sprint plan from approved requirements, architecture, available stories, dependencies, and risks.
agent: scrum-planner
lifecycle_stage: sprint-readiness
artifact_type: sprint-plan
version: 1.0.0
---

# Plan Sprint

## Purpose

Prepare a realistic sprint scope with clear goals, ready stories, dependencies, and risk controls.

## Use This Command When

- A team is preparing sprint scope.
- Stories exist and need sequencing.
- Sprint readiness needs evidence before commitment.

## Required Inputs

- Approved PRD and HLD.
- Existing stories and backlog candidates.
- Team capacity or constraints when available.

## Context To Read First

- lifecycle/03-requirements/prd.md
- lifecycle/04-architecture/hld.md
- lifecycle/05-backlog/
- lifecycle/06-sprint-planning/
- sprint-readiness-gate.yml

## Operating Procedure

1. Identify sprint goal and candidate scope.
2. Check each story for readiness, dependencies, and acceptance criteria.
3. Sequence stories by value, risk, and dependency order.
4. Identify capacity concerns and external blockers.
5. Define sprint risks and mitigation actions.
6. Prepare approval and readiness notes.

## Output Format

Produce Markdown with these sections:

- Sprint Goal
- Candidate Stories
- Selected Scope
- Dependencies
- Risks and Mitigations
- Readiness Checklist
- Open Questions
- Approval

## Quality Checklist

- Scope is realistic.
- Dependencies are visible.
- Readiness issues are not hidden.
- Sprint goal is outcome-oriented.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Sprint plan can be reviewed by PO and Tech Lead.
- Stories have readiness status.
- Blockers are explicit.

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

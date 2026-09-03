---
id: review-architecture
name: Review Architecture
description: Review architecture artifacts or implementation against architectural intent and standards.
agent: solution-architect
lifecycle_stage: architecture-review
artifact_type: architecture-review
version: 1.0.0
---

# Review Architecture

## Purpose

Verify that architecture decisions remain coherent from design through implementation.

## Use This Command When

- Architecture artifacts need an independent review.
- A PR has architectural implications.
- A change may affect service boundaries, contracts, data, or operations.

## Required Inputs

- HLD, LLD, ADRs, PRD, service changes, and relevant standards.
- Known risks or review concerns.

## Context To Read First

- lifecycle/04-architecture/
- lifecycle/03-requirements/prd.md
- standards/architecture/
- Changed code if reviewing implementation.
- services.yml.

## Operating Procedure

1. Identify the architecture scope and drivers.
2. Review consistency between requirements, design, and implementation.
3. Check service boundaries, contracts, data, security, and operations.
4. Identify missing ADRs or decision records.
5. Classify findings by impact.
6. Recommend approval, revision, or escalation.

## Output Format

Produce Markdown with these sections:

- Summary
- Scope Reviewed
- Architecture Findings
- Required Changes
- Suggested Improvements
- Missing Decisions
- Risks
- Recommendation

## Quality Checklist

- Findings are linked to architecture drivers or standards.
- Decision gaps are explicit.
- Required changes are justified.
- Recommendation is not vague.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Architecture status is clear.
- Decision owners know next actions.
- Gate or PR impact is explicit.

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

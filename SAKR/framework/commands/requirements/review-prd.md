---
id: requirements-review-prd
name: Review PRD
description: Review a PRD for completeness, clarity, testability, risks, dependencies, and readiness for architecture.
agent: product-owner
lifecycle_stage: requirements
artifact_type: prd-review
version: 1.0.0
---

# Review PRD

## Purpose

Find requirement gaps before architecture and development amplify them.

## Use This Command When

- A PRD exists and is being prepared for approval.
- A requirements gate failed or needs AI review.
- Architecture or QA found ambiguity in product requirements.

## Required Inputs

- lifecycle/03-requirements/prd.md
- lifecycle/02-business-analysis/brd.md when available.
- Known stakeholder decisions and prior review notes.

## Context To Read First

- requirements-gate.yml
- project/glossary.md
- standards/qa/test-strategy.md
- Relevant standards for NFRs.

## Operating Procedure

1. Check required PRD sections and internal consistency.
2. Evaluate functional requirements for clarity and completeness.
3. Evaluate acceptance criteria for testability.
4. Check NFRs, dependencies, risks, assumptions, and open questions.
5. Identify missing decisions and conflicting statements.
6. Provide readiness recommendation and required changes.

## Output Format

Produce Markdown with these sections:

- Summary
- Readiness Status
- Findings
- Required Changes
- Suggested Improvements
- Acceptance Criteria Gaps
- Open Questions
- Recommendation

## Quality Checklist

- Findings cite the affected section.
- Required changes are separated from suggestions.
- Review is actionable for a Product Owner.
- Recommendation matches evidence.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- PRD readiness is clear.
- Blockers are explicit.
- Next revision actions are concrete.

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

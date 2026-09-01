---
id: qa-generate-test-cases
name: Generate Test Cases
description: Generate test cases from requirements, stories, acceptance criteria, and risk context.
agent: qa-engineer
lifecycle_stage: testing
artifact_type: test-cases
version: 1.0.0
---

# Generate Test Cases

## Purpose

Create test scenarios that validate expected behavior, edge cases, negative paths, and regression risks.

## Use This Command When

- A story or PRD needs test coverage.
- QA needs manual or automated test case drafts.
- Sprint readiness or testing gate needs better evidence.

## Required Inputs

- Story or PRD.
- Acceptance criteria and business rules.
- Architecture or integration notes when relevant.

## Context To Read First

- lifecycle/03-requirements/prd.md
- lifecycle/05-backlog/
- standards/qa/test-strategy.md
- standards/qa/automation-standards.md
- Service tests when available.

## Operating Procedure

1. Extract behavior, business rules, and acceptance criteria.
2. Identify positive, negative, boundary, permission, integration, and regression scenarios.
3. Map each test case to requirement or story criteria.
4. Suggest automation level and test data.
5. Identify gaps that require product or technical clarification.
6. Produce test cases in a consistent table or structured list.

## Output Format

Produce Markdown with these sections:

- Scope
- Traceability
- Test Cases
- Test Data
- Automation Recommendations
- Coverage Gaps
- Open Questions

## Quality Checklist

- Each acceptance criterion has at least one test or a documented gap.
- Boundary and invalid cases are included.
- Test data is explicit.
- Automation suggestions are realistic.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Test cases are ready for QA review or automation.
- Coverage gaps are visible.
- Open questions are actionable.

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

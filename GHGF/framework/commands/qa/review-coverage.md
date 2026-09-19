---
id: qa-review-coverage
name: Review Coverage
description: Review test coverage against requirements, stories, acceptance criteria, and risks.
agent: qa-engineer
lifecycle_stage: testing
artifact_type: coverage-review
version: 1.0.0
---

# Review Coverage

## Purpose

Determine whether current tests provide enough evidence for merge, gate, or release decisions.

## Use This Command When

- Tests exist and need coverage review.
- A testing gate is being prepared.
- A PR or release needs QA confidence assessment.

## Required Inputs

- Requirements, stories, acceptance criteria, and test files or reports.
- Known defects and risks.
- Relevant QA standards.

## Context To Read First

- lifecycle/03-requirements/prd.md
- lifecycle/05-backlog/
- lifecycle/09-testing/
- standards/qa/
- Service test suite and reports.

## Operating Procedure

1. List requirements and acceptance criteria in scope.
2. Inventory existing tests and validation evidence.
3. Map tests to criteria and risks.
4. Identify missing coverage, weak assertions, flaky areas, or manual-only gaps.
5. Classify gaps by risk and recommendation.
6. Provide quality readiness status.

## Output Format

Produce Markdown with these sections:

- Summary
- Coverage Map
- Covered Criteria
- Gaps
- Risk Assessment
- Required Tests
- Suggested Improvements
- Recommendation

## Quality Checklist

- Coverage claims are evidence-based.
- Gaps are prioritized.
- Manual and automated evidence are distinguished.
- Recommendation is clear.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Coverage status is understandable.
- Required tests are actionable.
- Residual risk is explicit.

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

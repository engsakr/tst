---
id: development-explain-impact
name: Explain Impact
description: Explain the code, API, data, test, operational, and risk impact of a change.
agent: developer
lifecycle_stage: development
artifact_type: impact-analysis
version: 1.0.0
---

# Explain Impact

## Purpose

Help reviewers and stakeholders understand what changed and what may be affected.

## Use This Command When

- A branch or change set needs explanation.
- A PR review asks for impact analysis.
- Release notes or risk assessment need technical input.

## Required Inputs

- Changed files or diff summary.
- Related story or requirement.
- Service runtime context and standards.

## Context To Read First

- AGENTS.md
- sdlc.service.yml
- Related story or PRD
- Changed code and tests
- Relevant standards.

## Operating Procedure

1. Identify changed components and behavior.
2. Map changes to requirements and acceptance criteria.
3. Assess API, data, config, security, test, and operational impact.
4. Identify backward compatibility and rollback concerns.
5. Summarize risks and verification evidence.
6. Recommend reviewer focus areas.

## Output Format

Produce Markdown with these sections:

- Summary
- Behavior Impact
- API or Contract Impact
- Data or Configuration Impact
- Security and Operational Impact
- Tests and Verification
- Risks
- Reviewer Focus Areas

## Quality Checklist

- Impact is specific, not generic.
- User-visible and operational effects are separated.
- Risks include mitigation or verification.
- Reviewer focus is useful.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Reviewers can understand the change quickly.
- Risky areas are visible.
- Verification evidence is stated.

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

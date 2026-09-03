---
id: architecture-review-architecture
name: Review Architecture
description: Review architecture artifacts for completeness, consistency, standards alignment, and readiness.
agent: solution-architect
lifecycle_stage: architecture
artifact_type: architecture-review
version: 1.0.0
---

# Review Architecture

## Purpose

Catch architecture gaps before story generation or development starts.

## Use This Command When

- HLD, LLD, or ADRs need approval.
- Architecture gate requires AI review.
- Implementation planning reveals design uncertainty.

## Required Inputs

- lifecycle/04-architecture/ artifacts.
- BRD/PRD and service catalog.
- Relevant standards and prior decisions.

## Context To Read First

- architecture-gate.yml
- standards/architecture/
- standards/security/
- standards/devops/
- services.yml

## Operating Procedure

1. Check architecture artifacts against requirements and standards.
2. Review service boundaries, contracts, data, security, operations, and testing implications.
3. Identify missing decisions, unresolved risks, and conflicting assumptions.
4. Assess implementation readiness and story generation readiness.
5. Separate blockers from improvements.
6. Recommend approve, revise, or defer.

## Output Format

Produce Markdown with these sections:

- Summary
- Readiness Status
- Findings
- Required Changes
- Suggested Improvements
- Risks
- Open Questions
- Recommendation

## Quality Checklist

- Findings are specific and traceable.
- Security and operations are considered.
- Required changes are not mixed with suggestions.
- Recommendation is evidence-based.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Architecture readiness is clear.
- Blocking design issues have remediation paths.
- Gate outcome can be understood by humans.

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

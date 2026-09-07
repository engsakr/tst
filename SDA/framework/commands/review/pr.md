---
id: review-pr
name: Review PR
description: Review a branch or PR against story scope, acceptance criteria, standards, tests, security, and risk.
agent: developer
lifecycle_stage: development-review
artifact_type: pr-review
version: 1.0.0
---

# Review PR

## Purpose

Provide a high-signal engineering review focused on correctness, scope, safety, and merge readiness.

## Use This Command When

- A PR or branch is ready for review.
- A story implementation needs AI review before human review.
- A development gate or release needs change risk evidence.

## Required Inputs

- Changed files or diff.
- Related story and acceptance criteria.
- AGENTS.md, sdlc.service.yml, standards, and tests.

## Context To Read First

- AGENTS.md
- sdlc.service.yml
- Related story file
- Relevant standards
- Changed code and tests
- Existing patterns in the service.

## Operating Procedure

1. Understand story scope and acceptance criteria.
2. Inspect changed files for correctness, edge cases, errors, tests, and standards alignment.
3. Check for security-sensitive issues such as secrets, unsafe logs, authorization gaps, and input validation.
4. Identify missing tests or risky behavior changes.
5. Separate blocking findings from suggestions.
6. Give final merge recommendation.

## Output Format

Produce Markdown with these sections:

- Summary
- Findings
- Required Changes
- Suggested Improvements
- Test Gaps
- Security Risks
- Residual Risks
- Final Recommendation

## Quality Checklist

- Findings include severity and file/area reference when possible.
- Blocking issues are concrete.
- Review does not nitpick style unless it affects maintainability or standards.
- Recommendation matches evidence.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.
- Do not approve your own changes as a human reviewer.
- Do not expose secrets found in code; describe location and risk without copying secret values.

## Done Criteria

- Reviewer knows what must change before merge.
- Test and security gaps are visible.
- Final recommendation is explicit.

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

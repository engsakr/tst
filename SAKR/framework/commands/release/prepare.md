---
id: release-prepare
name: Prepare Release
description: Prepare release artifacts and readiness evidence from stories, tests, risks, and deployment context.
agent: release-manager
lifecycle_stage: release
artifact_type: release-package
version: 1.0.0
---

# Prepare Release

## Purpose

Assemble the release evidence needed for release gate validation and human approval.

## Use This Command When

- A release candidate is being prepared.
- Stories and tests are complete enough for release planning.
- Release notes, checklist, and rollback plan are needed.

## Required Inputs

- Approved stories and change summaries.
- Test summary and known issues.
- Deployment standards and operational notes.

## Context To Read First

- lifecycle/05-backlog/
- lifecycle/09-testing/
- lifecycle/10-release/
- standards/release/
- standards/devops/
- release-gate.yml

## Operating Procedure

1. Collect release scope and associated stories.
2. Summarize changes, fixes, risks, and known issues.
3. Confirm test and gate evidence.
4. Draft or update release notes.
5. Draft or update deployment checklist.
6. Draft or update rollback plan.
7. Prepare go/no-go recommendation and approval needs.

## Output Format

Produce Markdown with these sections:

- Release Scope
- Release Notes Draft
- Deployment Checklist Draft
- Rollback Plan Draft
- Known Issues
- Validation Evidence
- Go/No-Go Recommendation

## Quality Checklist

- Release scope is traceable.
- Deployment and rollback steps are executable.
- Known issues are not hidden.
- Approval needs are explicit.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Release artifacts are ready for review.
- Release gate inputs are present or blockers are clear.
- Human approval can be requested with evidence.

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

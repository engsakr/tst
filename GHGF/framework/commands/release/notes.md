---
id: release-notes
name: Create Release Notes
description: Create release notes with features, fixes, risks, validation evidence, and known issues.
agent: release-manager
lifecycle_stage: release
artifact_type: release-notes
version: 1.0.0
---

# Create Release Notes

## Purpose

Communicate what is changing in a release and what stakeholders should know.

## Use This Command When

- A release needs customer, internal, or operational notes.
- Stories are complete and ready to summarize.
- Known issues or risk notes need to be captured.

## Required Inputs

- Story list, PR summaries, test results, known issues, and product notes.
- Audience and release version if known.

## Context To Read First

- lifecycle/05-backlog/
- lifecycle/09-testing/
- lifecycle/10-release/
- standards/release/release-strategy.md

## Operating Procedure

1. Identify release audience and scope.
2. Group changes by feature, fix, operational change, and known issue.
3. Translate technical details into stakeholder-readable language.
4. Include validation evidence and residual risks.
5. Add upgrade, compatibility, or rollout notes when relevant.
6. Prepare approval section.

## Output Format

Produce Markdown with these sections:

- Overview
- Release Scope
- New Features
- Fixes
- Operational Notes
- Known Issues
- Validation Evidence
- Risks
- Approval

## Quality Checklist

- Notes are accurate and not overpromising.
- Known issues are visible.
- Technical detail matches the audience.
- Validation evidence is included.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Release notes can be reviewed by PO, QA, and release owners.
- Scope is traceable to stories.
- Risks are clear.

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

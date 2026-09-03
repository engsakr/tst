---
id: requirements-find-gaps
name: Find Requirement Gaps
description: Find missing, conflicting, ambiguous, or untestable requirements across BRD, PRD, stories, and standards.
agent: business-analyst
lifecycle_stage: requirements
artifact_type: gap-analysis
version: 1.0.0
---

# Find Requirement Gaps

## Purpose

Prevent unclear requirements from flowing into architecture, sprint planning, or implementation.

## Use This Command When

- Requirements feel incomplete or inconsistent.
- A gate failed due to missing sections or open questions.
- Stories or architecture reveal requirement ambiguity.

## Required Inputs

- BRD, PRD, or story artifacts to compare.
- Business rules and glossary.
- Relevant standards or stakeholder notes.

## Context To Read First

- lifecycle/03-requirements/
- lifecycle/05-backlog/ when relevant.
- project/glossary.md
- project/stakeholders.md
- requirements-gate.yml

## Operating Procedure

1. List source artifacts and expected requirement coverage.
2. Compare business rules, product requirements, acceptance criteria, and open questions.
3. Identify missing roles, states, edge cases, errors, dependencies, and NFRs.
4. Classify each gap by severity and lifecycle impact.
5. Recommend fixes, owner, and target artifact.
6. Summarize readiness impact.

## Output Format

Produce Markdown with these sections:

- Scope of Review
- Gap Summary
- Detailed Gaps
- Conflicts
- Ambiguities
- Untestable Requirements
- Recommended Fixes
- Readiness Impact

## Quality Checklist

- Each gap has a concrete remediation path.
- Severity is justified.
- No vague “needs more detail” findings without specifics.
- Findings point to the artifact that should be updated.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Gaps are actionable.
- Artifact owners can update the correct files.
- Gate impact is clear.

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

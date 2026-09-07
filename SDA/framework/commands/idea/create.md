---
id: idea-create
name: Create Idea Brief
description: Create a structured idea brief from raw business, product, or technical input.
agent: idea-analyst
lifecycle_stage: idea
artifact_type: idea-brief
version: 1.0.0
---

# Create Idea Brief

## Purpose

Transform raw input into a concise idea brief that can be reviewed by product, business, and architecture stakeholders before deeper analysis begins.

## Use This Command When

- A stakeholder has a new idea but no structured artifact exists.
- The team needs a lightweight intake document before BRD or PRD work.
- The idea needs scope, value, assumptions, and open questions separated clearly.

## Required Inputs

- Raw idea text or conversation summary.
- Known stakeholder, product, or business context.
- Any known constraints, deadlines, or success measures.

## Context To Read First

- project/domain.md if available.
- project/roadmap.md if available.
- project/stakeholders.md if available.
- Existing lifecycle/01-idea/ artifacts to avoid duplication.

## Operating Procedure

1. Restate the idea in neutral, business-readable language.
2. Identify the target users or affected teams.
3. Capture the business problem, expected value, and possible outcomes.
4. Define initial scope and non-scope without designing the solution prematurely.
5. List assumptions, constraints, risks, and open questions.
6. Recommend whether the idea is ready for analysis, should be refined, should be deferred, or should be rejected.

## Output Format

Produce Markdown with these sections:

- Summary
- Problem or Opportunity
- Target Users or Stakeholders
- Goals and Non-Goals
- Initial Scope
- Assumptions and Constraints
- Risks
- Open Questions
- Recommendation

## Quality Checklist

- The brief is understandable without reading the original conversation.
- Open questions are actionable.
- No implementation design is presented as an approved decision.
- The recommendation is tied to evidence.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Idea is captured in a reviewable Markdown artifact.
- Uncertainty is visible.
- Next step is clear.

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

---
id: idea-analyze
name: Analyze Idea
description: Analyze a proposed idea for value, feasibility, risks, assumptions, and readiness for requirements work.
agent: idea-analyst
lifecycle_stage: idea
artifact_type: idea-analysis
version: 1.0.0
---

# Analyze Idea

## Purpose

Help stakeholders decide whether an idea should move forward, be refined, or be deferred.

## Use This Command When

- An idea brief exists and needs evaluation.
- Stakeholders need a go/no-go recommendation before BRD work.
- The idea has uncertainty around value, feasibility, or scope.

## Required Inputs

- lifecycle/01-idea/idea-brief.md or equivalent idea description.
- Known business goals and constraints.
- Any early feasibility, user, or market evidence.

## Context To Read First

- project/domain.md
- project/roadmap.md
- project/stakeholders.md
- Relevant standards when feasibility depends on architecture or compliance.

## Operating Procedure

1. Summarize the idea and intended outcome.
2. Assess business value, urgency, strategic fit, and affected users.
3. Identify feasibility risks without designing a final architecture.
4. Identify assumptions that must be validated.
5. List discovery questions and suggested validation activities.
6. Recommend proceed, refine, defer, or reject.

## Output Format

Produce Markdown with these sections:

- Executive Summary
- Value Assessment
- Feasibility Notes
- Risks and Assumptions
- Discovery Questions
- Options
- Recommendation

## Quality Checklist

- Recommendation is not generic.
- Risks include impact and mitigation direction.
- Assumptions are separated from facts.
- Analysis is short enough for stakeholder review.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Decision options are clear.
- Open questions are ready for assignment.
- The artifact can feed BRD creation.

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

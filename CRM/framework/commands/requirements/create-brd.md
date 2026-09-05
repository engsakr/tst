---
id: requirements-create-brd
name: Create BRD
description: Create a Business Requirements Document from approved idea inputs and stakeholder context.
agent: business-analyst
lifecycle_stage: requirements
artifact_type: brd
version: 1.0.0
---

# Create BRD

## Purpose

Convert idea-stage input into business requirements that describe why the work matters, what business rules apply, and what must be clarified.

## Use This Command When

- An idea is approved for business analysis.
- Business stakeholders need a structured BRD.
- Business rules, scope, and open questions need to be documented before product requirements.

## Required Inputs

- lifecycle/01-idea/idea-brief.md
- Stakeholder notes or interview summaries.
- Domain glossary, roadmap, and known business constraints.

## Context To Read First

- project/domain.md
- project/glossary.md
- project/stakeholders.md
- standards/ as relevant to business constraints.
- Existing lifecycle/02-business-analysis/brd.md if updating.

## Operating Procedure

1. Identify business goals, stakeholders, process context, and business problem.
2. Extract confirmed business rules and distinguish them from assumptions.
3. Define in-scope and out-of-scope business capabilities.
4. Capture dependencies, constraints, risks, and measurable outcomes.
5. List open questions with owners or suggested owners when known.
6. Prepare approval section for required roles.

## Output Format

Produce Markdown with these sections:

- Overview
- Business Problem
- Business Goals
- Stakeholders
- Scope
- Business Rules
- Assumptions
- Dependencies and Constraints
- Risks
- Open Questions
- Approval

## Quality Checklist

- Business rules are testable.
- Scope boundaries are explicit.
- No technical design is hidden in the BRD.
- Approval evidence is prepared but not fabricated.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- BRD can be reviewed by business and product stakeholders.
- Open questions do not hide blocker decisions.
- PRD creation can proceed or blockers are clearly stated.

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

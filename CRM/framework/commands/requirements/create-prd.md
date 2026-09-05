---
id: requirements-create-prd
name: Create PRD
description: Create a Product Requirements Document with product scope, personas, requirements, NFRs, and acceptance criteria.
agent: product-owner
lifecycle_stage: requirements
artifact_type: prd
version: 1.0.0
---

# Create PRD

## Purpose

Translate business requirements into product-ready scope that architecture, development, and QA can use.

## Use This Command When

- A BRD or equivalent business input exists.
- The team needs product requirements before architecture or story generation.
- Acceptance criteria and non-goals need to be explicit.

## Required Inputs

- lifecycle/02-business-analysis/brd.md
- Product goals, user personas, roadmap, constraints, and stakeholder decisions.
- Known dependencies and risks.

## Context To Read First

- project/domain.md
- project/glossary.md
- project/roadmap.md
- standards/qa/test-strategy.md if available.
- Existing lifecycle/03-requirements/prd.md if updating.

## Operating Procedure

1. Summarize the product problem and intended outcomes.
2. Define goals, non-goals, personas, and user journeys when known.
3. Write functional requirements in observable language.
4. Write non-functional requirements with measurable or reviewable expectations.
5. Create acceptance criteria that QA can test.
6. Document dependencies, risks, open questions, and approval needs.

## Output Format

Produce Markdown with these sections:

- Product Summary
- Problem Statement
- Goals
- Non-Goals
- User Personas
- Functional Requirements
- Non-Functional Requirements
- Acceptance Criteria
- Dependencies
- Risks
- Open Questions
- Approval

## Quality Checklist

- Acceptance criteria map to requirements.
- NFRs are not vague.
- Non-goals prevent accidental scope creep.
- The PRD is ready for architecture review unless blockers are listed.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- PRD is complete enough for architecture work or blockers are explicit.
- Open questions are below the project gate threshold or justified.
- Approval table is ready for Product Owner and Tech Lead.

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

---
id: architecture-create-adr
name: Create ADR
description: Create an Architecture Decision Record with context, options, decision, consequences, and approval needs.
agent: solution-architect
lifecycle_stage: architecture
artifact_type: adr
version: 1.0.0
---

# Create ADR

## Purpose

Record significant technical decisions so future teams understand why an approach was chosen.

## Use This Command When

- A decision affects architecture, cost, risk, compatibility, operations, or long-term maintainability.
- Multiple reasonable options exist.
- A decision needs explicit human approval or traceability.

## Required Inputs

- Decision topic and context.
- Requirements, HLD/LLD, standards, constraints, and options.
- Known stakeholder or technical preferences.

## Context To Read First

- lifecycle/03-requirements/prd.md
- lifecycle/04-architecture/hld.md
- standards/architecture/
- standards/security/
- standards/devops/

## Operating Procedure

1. State the decision problem and context.
2. List decision drivers and constraints.
3. Describe considered options fairly.
4. Compare options by benefits, costs, risks, and consequences.
5. State the recommended decision and rationale.
6. List consequences, follow-up work, and approval needs.

## Output Format

Produce Markdown with these sections:

- Title
- Status
- Context
- Decision Drivers
- Options Considered
- Decision
- Rationale
- Consequences
- Follow-Up Actions
- Approval

## Quality Checklist

- Options are not strawmen.
- Decision rationale is clear.
- Consequences include trade-offs.
- Status and approval needs are explicit.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- ADR can be reviewed independently.
- Decision is traceable to requirements and constraints.
- Follow-up actions are actionable.

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

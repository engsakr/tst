---
id: architecture-create-hld
name: Create HLD
description: Create a high-level design from approved requirements and architecture standards.
agent: solution-architect
lifecycle_stage: architecture
artifact_type: hld
version: 1.0.0
---

# Create HLD

## Purpose

Define the system approach, service boundaries, major components, data/integration flows, risks, and architecture decisions.

## Use This Command When

- A PRD is ready for architecture.
- The team needs an HLD before story generation.
- A solution direction must be reviewed by architects and Tech Lead.

## Required Inputs

- lifecycle/03-requirements/prd.md
- lifecycle/02-business-analysis/brd.md when available.
- Service catalog and relevant standards.

## Context To Read First

- services.yml
- standards/architecture/
- standards/security/
- standards/devops/
- project/domain.md
- Existing lifecycle/04-architecture/ artifacts.

## Operating Procedure

1. Identify architecture drivers from requirements and NFRs.
2. Define system context, services, responsibilities, and boundaries.
3. Document APIs, events, data ownership, deployment, and observability at a high level.
4. Identify key decisions and whether ADRs are needed.
5. List risks, assumptions, dependencies, and trade-offs.
6. Prepare approval section.

## Output Format

Produce Markdown with these sections:

- Overview
- Architecture Drivers
- System Context
- Components and Responsibilities
- Data and Integration Flow
- Security and Operational Considerations
- Architecture Decisions
- Risks and Trade-offs
- Open Questions
- Approval

## Quality Checklist

- Architecture choices trace to requirements.
- Service boundaries are clear.
- Risks and trade-offs are explicit.
- The HLD supports story generation.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- HLD is reviewable by Tech Lead and architects.
- Known ADR needs are listed.
- Architecture gate inputs are complete or blockers are explicit.

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

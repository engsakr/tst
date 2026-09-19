---
id: architecture-create-lld
name: Create LLD
description: Create a low-level design for a service or component from HLD, PRD, and service context.
agent: solution-architect
lifecycle_stage: architecture
artifact_type: lld
version: 1.0.0
---

# Create LLD

## Purpose

Provide implementation-ready design detail without replacing developer judgment or code review.

## Use This Command When

- A service needs detailed design before implementation.
- A story has non-trivial API, data, integration, or error-handling needs.
- Architecture review asks for more implementation detail.

## Required Inputs

- HLD or ADRs.
- PRD and relevant stories.
- Service runtime file and existing code patterns if available.

## Context To Read First

- lifecycle/04-architecture/hld.md
- lifecycle/04-architecture/adr*.md
- lifecycle/05-backlog/
- standards/backend/
- standards/architecture/
- service sdlc.service.yml if generated.

## Operating Procedure

1. Identify target service/component and affected responsibilities.
2. Define module boundaries, APIs, data structures, validation, errors, and tests.
3. Document dependencies, configuration, security, and observability details.
4. Call out alternatives and trade-offs when meaningful.
5. Map design details to acceptance criteria.
6. List implementation risks and open questions.

## Output Format

Produce Markdown with these sections:

- Overview
- Target Service or Component
- Detailed Design
- APIs and Contracts
- Data Model or State Changes
- Error Handling
- Security and Observability
- Test Strategy
- Risks
- Open Questions

## Quality Checklist

- Design is specific enough for implementation.
- Acceptance criteria are covered.
- Codebase patterns are respected.
- Risky design decisions are visible.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Developer can implement without guessing major design decisions.
- QA can derive tests.
- Open design questions are explicit.

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

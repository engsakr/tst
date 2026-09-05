---
id: release-rollback-plan
name: Create Rollback Plan
description: Create a rollback plan with triggers, owners, steps, validation, and communication guidance.
agent: release-manager
lifecycle_stage: release
artifact_type: rollback-plan
version: 1.0.0
---

# Create Rollback Plan

## Purpose

Ensure the team can recover if deployment fails or critical behavior regresses.

## Use This Command When

- A release is being prepared.
- A change has operational or data risk.
- Release gate requires rollback evidence.

## Required Inputs

- Deployment checklist, release notes, architecture notes, data migration notes, and rollback policy.

## Context To Read First

- lifecycle/10-release/deployment-checklist.md
- standards/release/rollback-policy.md
- standards/devops/deployment-standards.md
- lifecycle/04-architecture/

## Operating Procedure

1. Identify rollback scope and affected services.
2. Define rollback triggers and decision owners.
3. List rollback steps in order.
4. Define post-rollback validation and smoke tests.
5. Capture data, compatibility, and communication risks.
6. State when rollback is not safe and escalation is needed.

## Output Format

Produce Markdown with these sections:

- Overview
- Rollback Scope
- Triggers
- Decision Owners
- Steps
- Validation
- Data or Compatibility Concerns
- Communication
- Approval

## Quality Checklist

- Rollback steps are realistic.
- Triggers are measurable.
- Data risks are explicit.
- Escalation path is clear.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Rollback plan can be followed under pressure.
- Validation is defined.
- Known rollback limitations are visible.

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

---
id: release-checklist
name: Create Deployment Checklist
description: Create a deployment checklist with prechecks, execution steps, verification, communication, and rollback triggers.
agent: release-manager
lifecycle_stage: release
artifact_type: deployment-checklist
version: 1.0.0
---

# Create Deployment Checklist

## Purpose

Make deployment repeatable and verifiable.

## Use This Command When

- A release is being prepared for deployment.
- Deployment steps are not documented.
- Release gate requires deployment readiness evidence.

## Required Inputs

- Release scope, service deployment context, CI/CD standards, operational checks, and rollback policy.

## Context To Read First

- standards/devops/deployment-standards.md
- standards/devops/ci-cd-standards.md
- standards/release/rollback-policy.md
- lifecycle/10-release/release-notes.md

## Operating Procedure

1. Identify target environment and affected services.
2. Define pre-deployment checks.
3. List deployment steps in execution order.
4. Define smoke tests and health checks.
5. Define communication and monitoring steps.
6. List rollback triggers and handoff to rollback plan.

## Output Format

Produce Markdown with these sections:

- Overview
- Pre-Deployment Checks
- Deployment Steps
- Verification
- Monitoring
- Communication
- Rollback Triggers
- Approval

## Quality Checklist

- Steps are executable.
- Verification is specific.
- Rollback triggers are clear.
- No hidden environment assumptions.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.

## Done Criteria

- Deployment can be rehearsed or followed by an operator.
- Smoke tests are defined.
- Rollback criteria are visible.

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

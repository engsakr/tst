---
name: release-readiness
description: Prepare and review AI-SDLC release readiness. Use for release notes, deployment checklists, rollback plans, known issues, validation evidence, go/no-go recommendations, release gate preparation, deployment readiness, and post-release monitoring.
---

# Release Readiness

Use this skill when preparing a release package or validating release gate readiness.

## Core Workflow

1. Read approved stories, change summaries, test summary, known issues, and release standards.
2. Confirm release scope and affected services.
3. Create or review release notes with scope, features, fixes, risks, known issues, and validation evidence.
4. Create or review deployment checklist with prechecks, ordered steps, verification, monitoring, and communication.
5. Create or review rollback plan with triggers, owners, steps, validation, data/compatibility concerns, and escalation.
6. Identify release-blocking defects, security risks, operational gaps, and unresolved approvals.
7. Prepare a go/no-go recommendation for human decision makers.

## Quality Bar

- Release scope is traceable to approved stories or change records.
- Deployment steps are executable and verifiable.
- Rollback is realistic under pressure.
- Known issues and residual risks are visible.
- Required Product Owner, Tech Lead, QA, Release Manager, Security, or DevOps approvals are explicit.

## Go/No-Go Review

Recommend Go only when blocker checks pass, release artifacts are complete, validation evidence exists, rollback is defined, and required approvals are present.

Recommend No-Go when release risk cannot be mitigated or required approvals/evidence are missing.

Recommend Conditional Go only when remaining risks are explicitly accepted by the correct human owners.

## Guardrails

- Do not hide known issues.
- Do not invent validation evidence.
- Do not define vague rollback steps.
- Do not approve release on behalf of humans.
- Do not treat release notes as a substitute for deployment and rollback readiness.

## Related Framework Assets

- agents/release-manager.md
- agents/devops-engineer.md
- agents/security-reviewer.md
- commands/release/prepare.md
- commands/release/notes.md
- commands/release/checklist.md
- commands/release/rollback-plan.md
- gates/testing-gate.yml
- gates/release-gate.yml
- templates/release-notes.md.tpl
- templates/deployment-checklist.md.tpl
- templates/rollback-plan.md.tpl

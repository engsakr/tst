---
name: architecture-authoring
description: Create and review AI-SDLC architecture artifacts. Use for HLDs, LLDs, ADRs, service boundaries, API and event contracts, data ownership, security/DevOps implications, architecture reviews, and architecture gate readiness.
---

# Architecture Authoring

Use this skill when producing or reviewing architecture artifacts from approved requirements.

## Core Workflow

1. Read lifecycle/03-requirements/prd.md, lifecycle/02-business-analysis/brd.md, and relevant standards before designing.
2. Identify architecture drivers: functional requirements, NFRs, constraints, risks, integrations, security, operations, and data concerns.
3. For HLDs, document system context, components, responsibilities, service boundaries, integration/data flow, major decisions, risks, open questions, and approval.
4. For LLDs, document module/component design, APIs, validation, data structures, error handling, security, observability, and test strategy.
5. For ADRs, document context, decision drivers, options, chosen decision, rationale, consequences, and follow-up actions.
6. Review artifacts against architecture-gate requirements before handoff.

## Specialist Routing

- Use solution-architect for overall design.
- Use integration-architect for APIs, events, providers, consumers, and compatibility.
- Use database-architect for persistence, migrations, ownership, consistency, and rollback risks.
- Use security-reviewer for trust boundaries, auth, secrets, data exposure, and threat surface.
- Use devops-engineer for deployment, observability, config, and recovery.

## Quality Bar

- Design decisions trace to requirements and standards.
- Trade-offs and consequences are explicit.
- Service boundaries and integration contracts are understandable.
- Security, data, operations, and testing implications are not afterthoughts.
- The output is specific enough for story generation.

## Guardrails

- Do not select technology without explaining why.
- Do not hide unresolved architecture decisions.
- Do not treat diagrams as a substitute for decisions.
- Do not approve architecture without human approval evidence.

## Related Framework Assets

- agents/solution-architect.md
- agents/integration-architect.md
- agents/database-architect.md
- agents/security-reviewer.md
- agents/devops-engineer.md
- commands/architecture/create-hld.md
- commands/architecture/create-lld.md
- commands/architecture/create-adr.md
- commands/architecture/review-architecture.md
- gates/architecture-gate.yml
- templates/hld.md.tpl
- templates/lld.md.tpl
- templates/adr.md.tpl

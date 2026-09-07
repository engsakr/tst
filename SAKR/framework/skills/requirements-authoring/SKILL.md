---
name: requirements-authoring
description: Create, review, and improve AI-SDLC requirements artifacts. Use for idea briefs, BRDs, PRDs, business rules, acceptance criteria, requirement gap analysis, open questions, and requirements gate readiness.
---

# Requirements Authoring

Use this skill when turning idea or business input into reviewable requirements artifacts.

## Core Workflow

1. Read project/domain.md, project/glossary.md, project/stakeholders.md, and project/roadmap.md when available.
2. Read lifecycle/01-idea/idea-brief.md before creating BRD or PRD artifacts.
3. For BRDs, separate business problem, goals, scope, business rules, assumptions, open questions, and approval evidence.
4. For PRDs, define product summary, problem statement, goals, non-goals, personas, functional requirements, non-functional requirements, acceptance criteria, dependencies, risks, open questions, and approval evidence.
5. Check requirements for ambiguity, untestable wording, missing exceptions, missing NFRs, and missing approval evidence.
6. Prepare requirements for requirements-gate validation.

## Output Patterns

Use clear Markdown sections. Prefer tables for approvals and traceability. Keep assumptions and open questions separate.

## Review Checklist

- Can architecture begin from this PRD without guessing?
- Can QA derive test cases from acceptance criteria?
- Are non-goals explicit enough to prevent scope creep?
- Are business rules complete enough to avoid conflicting implementation?
- Are Product Owner and Tech Lead approvals represented in an Approval section?

## Quality Bar

- Requirements are observable, testable, and traceable.
- Open questions are actionable and low enough for gate thresholds.
- Assumptions are never presented as confirmed requirements.
- Risks include likely impact and mitigation direction.

## Guardrails

- Do not invent business rules.
- Do not write implementation design inside BRD/PRD unless explicitly labeled as a constraint.
- Do not approve requirements on behalf of humans.

## Related Framework Assets

- agents/idea-analyst.md
- agents/business-analyst.md
- agents/product-owner.md
- commands/requirements/create-brd.md
- commands/requirements/create-prd.md
- commands/requirements/review-prd.md
- commands/requirements/find-gaps.md
- gates/requirements-gate.yml
- templates/brd.md.tpl
- templates/prd.md.tpl

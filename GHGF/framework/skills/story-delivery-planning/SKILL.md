---
name: story-delivery-planning
description: Plan sprint delivery and create implementation-ready stories. Use for backlog slicing, sprint planning, story generation, Definition of Ready checks, dependency sequencing, acceptance criteria refinement, and sprint-readiness gate preparation.
---

# Story Delivery Planning

Use this skill to move from approved requirements and architecture into ready development work.

## Core Workflow

1. Read PRD, HLD/LLD/ADRs, standards, and current stories.
2. Identify capabilities, user outcomes, technical dependencies, integration dependencies, data impacts, and test needs.
3. Slice work into small stories that each have value, acceptance criteria, implementation notes, test notes, dependencies, risks, and open questions.
4. Build a sprint plan around a clear sprint goal, not a random list of tickets.
5. Check Definition of Ready before development starts.
6. Mark stories as ready, needs refinement, blocked, or deferred.

## Story Quality Checklist

- Story statement has a user or stakeholder value.
- Acceptance criteria are observable and testable.
- Dependencies and sequencing are explicit.
- Implementation notes are helpful but not over-prescriptive.
- Test notes cover positive, negative, boundary, and regression concerns.
- Open questions do not hide blocker decisions.

## Sprint Readiness Checklist

- Sprint goal is clear.
- Stories map to approved PRD and architecture.
- Product and technical approvals are represented where needed.
- Blocked stories are not counted as ready.
- Risks have mitigation or explicit acceptance.

## Guardrails

- Do not create large catch-all stories.
- Do not move ambiguous requirements into sprint execution.
- Do not skip QA input during readiness review.
- Do not invent commitments or team capacity.

## Related Framework Assets

- agents/scrum-planner.md
- agents/product-owner.md
- agents/qa-engineer.md
- commands/sprint/generate-stories.md
- commands/sprint/plan.md
- commands/sprint/check-readiness.md
- gates/sprint-readiness-gate.yml
- templates/story.md.tpl

# AI-SDLC Skills Index

Skills are reusable Codex-style instructions for common AI-SDLC workflows. They complement agents, commands, and gates:

- Agents define role behavior.
- Commands define task-level AI procedures.
- Gates define lifecycle validation rules.
- Skills define reusable workflow packages that tell an AI when and how to combine agents, commands, gates, templates, and standards.

## Available Skills

| Skill | Use When |
|---|---|
| governance-bootstrap | Starting or updating a project governance repo. |
| requirements-authoring | Creating or reviewing idea, BRD, PRD, requirements gaps, and acceptance criteria. |
| architecture-authoring | Creating or reviewing HLD, LLD, ADR, service boundaries, integrations, and architecture readiness. |
| story-delivery-planning | Generating stories, planning sprint scope, and checking Definition of Ready. |
| service-runtime-materialization | Generating AGENTS.md, AI_CONTEXT.md, sdlc.service.yml, and optional runtime-specific files in service repos. |
| gate-validation | Designing, running, troubleshooting, and interpreting lifecycle gates. |
| implementation-review | Implementing or reviewing service changes under governance. |
| release-readiness | Preparing release notes, deployment checklist, rollback plan, and release gate readiness. |

## Recommended Usage

When working with an AI assistant that supports skills, point it at the relevant skill folder and ask it to use the skill for the task. When an AI assistant does not support skills directly, read the skill's SKILL.md as procedural guidance.

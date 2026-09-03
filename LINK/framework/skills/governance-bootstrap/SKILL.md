---
name: governance-bootstrap
description: Create or update an AI-SDLC project governance repository. Use when starting a new project, defining governance.yml/services.yml, setting standards, creating lifecycle folders, configuring framework installation, or preparing a governance repo for AI-assisted delivery.
---

# Governance Bootstrap

Use this skill to create or refine a project governance repository that consumes the AI-SDLC framework.

## Core Workflow

1. Identify the project key, project name, delivery model, default branch, and service model.
2. Create or update governance.yml with project identity, framework source/version, runtime choices, gate paths, generated paths, and cache paths.
3. Create or update services.yml with one entry per service repository, including repo, branch, workspace path, service type, language, framework, build/test commands, runtime agents, and runtime commands.
4. Create standards/ folders for architecture, backend, frontend, QA, security, DevOps, and release standards.
5. Create project/ files for domain, glossary, roadmap, and stakeholders.
6. Create lifecycle/ lifecycle folders for idea, requirements, architecture, delivery, stories, testing, and release.
7. Add scripts/install-framework.mjs or document use of aisdlc install.
8. Confirm .aisdlc/cache and generated temporary outputs are ignored if the governance repo is committed.

## Required Outputs

- governance.yml
- services.yml
- sdlc.lock when framework is installed
- standards/ starter files
- project/ starter files
- lifecycle/ lifecycle folders
- scripts/install-framework.mjs when CLI installation is not yet available

## Quality Bar

- The governance repo must be useful without service code present.
- Framework source must point to a real Git repo, tag, branch, or commit in production.
- Local paths are allowed only for demos and must be labeled as local-demo.
- Service workspace paths must stay inside the governance root.
- Runtime choices must be explicit: Codex, Claude, generic, or any combination.

## Guardrails

- Do not copy the full framework into service repositories.
- Do not create a database, web app, or workflow engine.
- Do not store credentials or tokens in governance files.
- Do not silently overwrite project-specific standards.
- Mark missing project information as open questions.

## Related Framework Assets

- agents/sdlc-orchestrator.md
- commands/idea/create.md
- commands/requirements/create-brd.md
- gates/idea-gate.yml
- templates/AGENTS.md.tpl
- schemas/governance.schema.json

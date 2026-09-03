# AI-SDLC Agent, Role, Command, And Process Matrix

This document explains every AI-SDLC agent role, where it participates in the lifecycle, what it is responsible for, which command files it can use, what it should produce, and which gates it supports.

## Core Principle

AI prepares, drafts, and reviews. Scripts validate objective facts. Humans approve important decisions. CI/CD verifies builds and deployments.

## Lifecycle Phase Map

| Phase | Primary Agents | Main Commands | Main Outputs | Gate |
| --- | --- | --- | --- | --- |
| Idea | idea-analyst, sdlc-orchestrator | idea/create, idea/analyze | Idea brief and idea analysis | idea-gate |
| Business Analysis | business-analyst, idea-analyst | requirements/create-brd, requirements/find-gaps | BRD and business rules | requirements-gate |
| PRD / Product Requirements | product-owner, business-analyst, ux-reviewer, qa-engineer | requirements/create-prd, requirements/review-prd, requirements/find-gaps | PRD, acceptance criteria, NFRs | requirements-gate |
| Architecture | solution-architect, integration-architect, database-architect, security-reviewer, devops-engineer | architecture/create-hld, architecture/create-lld, architecture/create-adr, architecture/review-architecture | HLD, LLD, ADRs, architecture review | architecture-gate |
| Backlog And Sprint Planning | scrum-planner, product-owner, qa-engineer, solution-architect | sprint/generate-stories, sprint/plan, sprint/check-readiness | Stories, sprint plan, readiness report | sprint-readiness-gate |
| Development | developer, security-reviewer, qa-engineer | development/implement-story, development/explain-impact, review/pr, review/security | Code changes, tests, PR review, impact analysis | development-gate |
| Testing | qa-engineer, developer, security-reviewer | qa/generate-test-cases, qa/review-coverage, review/security | Test cases, coverage review, test summary | testing-gate |
| Release Preparation | release-manager, qa-engineer, devops-engineer, security-reviewer, product-owner, tech lead | release/prepare, release/notes, release/checklist, release/rollback-plan | Release notes, deployment checklist, rollback plan | release-gate |
| Deployment And Feedback | release-manager, devops-engineer, sdlc-orchestrator | release/checklist, release/rollback-plan | Deployment verification, monitoring notes, feedback for next iteration | release-gate plus CI/CD checks |

## Agent Responsibility Matrix

| Agent | Role | Lifecycle Phase | Main Responsibility | Commands Used To Finish Work | Expected Outputs | Related Gates | Handoff |
| --- | --- | --- | --- | --- | --- | --- | --- |
| sdlc-orchestrator | Lifecycle Orchestrator | All phases: Idea through Release and Feedback | Coordinates the end-to-end AI-SDLC flow, identifies current stage, selects the right specialist agent/command, checks missing evidence, and makes sure gates and human approvals are not skipped. | Any command as coordinator, especially idea/create, requirements/review-prd, architecture/review-architecture, sprint/check-readiness, release/prepare | Lifecycle status, next-step plan, required evidence checklist, gate readiness checklist, blockers and open questions | All gates | Routes work to specialist agents and returns status to stakeholders. |
| idea-analyst | Idea Analyst | Idea, Business Analysis | Turns raw ideas into structured opportunity artifacts. Clarifies business problem, expected value, users, assumptions, risks, and discovery questions. | idea/create, idea/analyze | Idea brief, idea analysis, opportunity summary, assumptions, risks, open questions, proceed/refine/defer/reject recommendation | idea-gate | Hands viable ideas to business-analyst and product-owner. |
| business-analyst | Business Analyst | Business Analysis, Requirements | Creates and reviews business requirements. Defines business goals, scope, rules, assumptions, stakeholder questions, and requirement gaps. | requirements/create-brd, requirements/find-gaps, requirements/review-prd | BRD, business rules, requirement gap report, assumptions, open questions, stakeholder approval needs | requirements-gate | Hands clarified business requirements to product-owner and solution-architect. |
| product-owner | Product Owner | Requirements, Backlog, Sprint Readiness | Owns product scope, goals, non-goals, personas, priorities, acceptance criteria, and product approval evidence. | requirements/create-prd, requirements/review-prd, sprint/plan, sprint/check-readiness | PRD, prioritized requirements, acceptance criteria, scope decisions, product readiness recommendation | requirements-gate, sprint-readiness-gate | Hands approved PRD to solution-architect and ready scope to scrum-planner. |
| solution-architect | Solution Architect | Architecture, Sprint Readiness, Development Review | Designs and reviews technical solution architecture. Defines service boundaries, components, APIs, data/integration flows, decisions, risks, and standards alignment. | architecture/create-hld, architecture/create-lld, architecture/create-adr, architecture/review-architecture, review/architecture | HLD, LLD, ADRs, architecture review, trade-off analysis, technical risks, implementation guidance | architecture-gate, sprint-readiness-gate | Hands architecture to scrum-planner, developer, integration/database/security/devops specialists. |
| ux-reviewer | UX Reviewer | Requirements, Architecture, Sprint Readiness, Testing | Reviews user journeys, personas, usability, accessibility, states, errors, copy, and user-centered acceptance criteria. | requirements/review-prd, requirements/find-gaps, sprint/check-readiness, qa/generate-test-cases | UX review, missing user states, accessibility concerns, usability risks, suggested acceptance criteria | requirements-gate, sprint-readiness-gate, testing-gate | Hands product gaps to product-owner and validation scenarios to qa-engineer. |
| scrum-planner | Scrum Planner | Backlog, Sprint Planning, Story Generation, Sprint Readiness | Turns approved requirements and architecture into small, sequenced, testable stories and sprint plans. Checks Definition of Ready. | sprint/generate-stories, sprint/plan, sprint/check-readiness | Story set, sprint plan, readiness review, dependencies, sequencing, blocked items, sprint recommendation | sprint-readiness-gate | Hands ready stories to developer and test notes to qa-engineer. |
| developer | Developer | Development, Development Review | Implements approved stories inside service repos using AGENTS.md, AI_CONTEXT.md, sdlc.service.yml, standards, and existing code patterns. | development/implement-story, development/explain-impact, review/pr | Code changes, tests, implementation summary, impact analysis, validation results, PR review findings | development-gate | Hands implemented and tested work to qa-engineer, security-reviewer, and human reviewers. |
| qa-engineer | QA Engineer | Requirements, Sprint Readiness, Testing, Release | Creates test cases, reviews coverage, maps tests to acceptance criteria, identifies regression risk, and prepares quality evidence. | qa/generate-test-cases, qa/review-coverage, sprint/check-readiness, review/pr | Test cases, coverage review, test summary, traceability matrix, regression scope, quality recommendation | requirements-gate, sprint-readiness-gate, testing-gate, release-gate | Hands quality status to release-manager and gaps to product-owner/developer. |
| security-reviewer | Security Reviewer | Architecture, Development Review, Testing, Release | Reviews auth, authorization, input validation, data exposure, secrets, logging, dependencies, threat surface, and security risks. | review/security, architecture/review-architecture, review/pr, release/prepare | Security review, findings with severity, required fixes, mitigations, residual risks, release recommendation | architecture-gate, development-gate, testing-gate, release-gate | Hands fixes to developer, design risks to solution-architect, release blockers to release-manager. |
| devops-engineer | DevOps Engineer | Architecture, Development, Release, Deployment, Monitoring/Feedback | Reviews CI/CD, build/test commands, deployment, environments, configuration, secrets, health checks, observability, and rollback readiness. | architecture/review-architecture, development/explain-impact, release/checklist, release/rollback-plan, release/prepare | DevOps readiness review, deployment checklist input, observability checklist, rollback/recovery concerns | architecture-gate, development-gate, release-gate | Hands operational readiness to release-manager and implementation/config fixes to developer. |
| database-architect | Database Architect | Architecture, Development Review, Release | Reviews data ownership, schemas, migrations, consistency, retention, validation, query risk, rollback complexity, and data operational concerns. | architecture/create-hld, architecture/create-lld, architecture/create-adr, architecture/review-architecture, release/rollback-plan | Data architecture review, migration risk notes, data ownership decisions, rollback limitations, test recommendations | architecture-gate, development-gate, release-gate | Hands data design to solution-architect/developer and release migration risks to release-manager. |
| integration-architect | Integration Architect | Architecture, Sprint Readiness, Development Review, Release | Reviews APIs, events, providers, consumers, external dependencies, compatibility, idempotency, retries, timeouts, and contract testing needs. | architecture/create-hld, architecture/create-lld, architecture/create-adr, architecture/review-architecture, review/architecture | Integration review, contract assessment, compatibility risks, failure-mode analysis, contract test recommendations | architecture-gate, sprint-readiness-gate, development-gate, release-gate | Hands contract work to developer and validation scenarios to qa-engineer. |
| release-manager | Release Manager | Release Preparation, Deployment, Monitoring/Feedback | Prepares release readiness evidence, release notes, deployment checklist, rollback plan, known issues, risks, and go/no-go recommendation. | release/prepare, release/notes, release/checklist, release/rollback-plan | Release notes, deployment checklist, rollback plan, known issues, release risk summary, go/no-go recommendation | testing-gate, release-gate | Hands release package to human approvers, DevOps, QA, and stakeholders. |

## Command Ownership Matrix

| Command | Primary Agent(s) | Purpose | Typical Output |
| --- | --- | --- | --- |
| idea/create | idea-analyst | Create structured idea brief | lifecycle/01-idea/idea-brief.md |
| idea/analyze | idea-analyst | Analyze value, feasibility, risks, and readiness | Idea analysis report |
| requirements/create-brd | business-analyst | Create Business Requirements Document | lifecycle/02-business-analysis/brd.md |
| requirements/create-prd | product-owner | Create Product Requirements Document | lifecycle/03-requirements/prd.md |
| requirements/review-prd | product-owner, business-analyst, qa-engineer | Review PRD quality and readiness | PRD review report |
| requirements/find-gaps | business-analyst | Find missing or conflicting requirements | Requirement gap report |
| architecture/create-hld | solution-architect | Create high-level design | lifecycle/04-architecture/hld.md |
| architecture/create-lld | solution-architect | Create low-level design | lifecycle/04-architecture/lld.md |
| architecture/create-adr | solution-architect | Record architecture decision | lifecycle/04-architecture/adr-*.md |
| architecture/review-architecture | solution-architect plus specialists | Review architecture readiness | Architecture review report |
| sprint/generate-stories | scrum-planner | Generate stories from PRD and architecture | lifecycle/05-backlog/*.md |
| sprint/plan | scrum-planner | Create sprint plan | lifecycle/06-sprint-planning/sprint-plan.md |
| sprint/check-readiness | scrum-planner | Check Definition of Ready | Sprint readiness report |
| development/implement-story | developer | Implement approved story in service repo | Code, tests, implementation summary |
| development/explain-impact | developer | Explain technical impact of change | Impact analysis |
| qa/generate-test-cases | qa-engineer | Create test cases from requirements/stories | lifecycle/09-testing/test-cases.md or test files |
| qa/review-coverage | qa-engineer | Review test coverage and gaps | Coverage review report |
| review/pr | developer, qa-engineer, security-reviewer | Review PR or branch | PR review report |
| review/architecture | solution-architect | Review architecture in design or PR | Architecture review report |
| review/security | security-reviewer | Review security risks | Security review report |
| release/prepare | release-manager | Prepare release package | Release readiness package |
| release/notes | release-manager | Create release notes | lifecycle/10-release/release-notes.md |
| release/checklist | release-manager, devops-engineer | Create deployment checklist | lifecycle/10-release/deployment-checklist.md |
| release/rollback-plan | release-manager, devops-engineer | Create rollback plan | lifecycle/10-release/rollback-plan.md |

## Detailed Process

### 1. Idea

The idea-analyst starts from raw business or product input and uses idea/create or idea/analyze. The goal is not to design the solution yet. The goal is to make the problem, value, assumptions, risks, and open questions visible. The sdlc-orchestrator checks whether the idea is ready for idea-gate.

### 2. Business Analysis And Requirements

The business-analyst creates the BRD using requirements/create-brd and may use requirements/find-gaps to expose missing or conflicting business rules. The product-owner creates the PRD using requirements/create-prd. The ux-reviewer and qa-engineer help ensure requirements are user-centered and testable. The requirements-gate validates required files, sections, open questions, approval evidence, and AI quality review readiness.

### 3. Architecture

The solution-architect owns the HLD, LLD, ADRs, and architecture review. The integration-architect supports API/event contracts, the database-architect supports data and migration concerns, the security-reviewer supports threat and control review, and the devops-engineer supports deployment and operations readiness. The architecture-gate validates that architecture artifacts are complete and approved.

### 4. Story Generation And Sprint Readiness

The scrum-planner uses sprint/generate-stories, sprint/plan, and sprint/check-readiness to convert approved requirements and architecture into small, testable stories. The product-owner confirms scope and priority. The qa-engineer checks acceptance criteria and testability. The sprint-readiness-gate prevents unclear or blocked work from entering development.

### 5. Development

The developer works inside a service repo after runtime materialization. The developer reads AGENTS.md, AI_CONTEXT.md, sdlc.service.yml, the related story, and relevant standards. The developer uses development/implement-story to implement, development/explain-impact to summarize impact, and review/pr to review. The development-gate confirms runtime files and review readiness.

### 6. Testing

The qa-engineer uses qa/generate-test-cases and qa/review-coverage to create validation evidence and identify coverage gaps. The security-reviewer may use review/security for security-sensitive changes. The testing-gate checks test summary, coverage, defects, open questions, approval evidence, and AI quality review readiness.

### 7. Release

The release-manager uses release/prepare, release/notes, release/checklist, and release/rollback-plan. The devops-engineer supports deployment and rollback readiness. The qa-engineer confirms quality evidence. The security-reviewer confirms release-blocking security risks. The release-gate validates release notes, deployment checklist, rollback plan, open questions, approval evidence, and release readiness review.

## How Agents Should Work Together

- The sdlc-orchestrator coordinates stages and routes work.
- Specialist agents own depth in their domain but do not bypass gates.
- AI command files are not terminal commands; they are instructions the AI reads and follows.
- Gates are YAML governance contracts used by the CLI to validate objective facts and generate review evidence.
- Humans remain responsible for approvals, risk acceptance, architecture sign-off, release sign-off, and critical business decisions.

## Recommended Reading Order For Any Agent

1. Relevant skill under framework/skills when available.
2. Agent role file under framework/agents.
3. Command file under framework/commands.
4. Project governance files: governance.yml, services.yml, standards, project docs.
5. Lifecycle artifacts under lifecycle/.
6. Service runtime files: AGENTS.md, AI_CONTEXT.md, sdlc.service.yml, and optional runtime-specific files.

# AI-SDLC Lifecycle, Agents, Commands, And Gates Guide

This guide explains how the AI-SDLC process works end to end: lifecycle steps, responsible agents, command files, gates, gate validation commands, required artifacts, and how to move from one phase to the next.

## Core Mental Model

~~~text
Lifecycle folder = where artifacts live
Agent = role/persona responsible for drafting or reviewing work
Command = Markdown instruction the AI follows to do a task
Gate = checkpoint that validates whether the work is ready to move forward
CLI = tool that installs, syncs, materializes, and validates objective facts
Human = final approver for important business, architecture, release, and risk decisions
~~~

The framework rule is:

~~~text
AI prepares.
AI drafts.
AI reviews.
Scripts validate objective facts.
Humans approve important decisions.
CI/CD verifies builds and deployments.
~~~

## End-To-End Lifecycle Diagram

~~~mermaid
flowchart TD
    A[01 Idea] --> G1{Idea Gate}
    G1 --> B[02 Business Analysis]
    B --> C[03 Requirements]
    C --> G2{Requirements Gate}
    G2 --> D[04 Architecture]
    D --> G3{Architecture Gate}
    G3 --> E[05 Backlog]
    E --> F[06 Sprint Planning]
    F --> G4{Sprint Readiness Gate}
    G4 --> H[07 Development]
    H --> I[08 PR Review]
    I --> G5{Development Gate}
    G5 --> J[09 Testing]
    J --> G6{Testing Gate}
    G6 --> K[10 Release Preparation]
    K --> G7{Release Gate}
    G7 --> L[11 Deployment]
    L --> M[12 Feedback]
    M --> E
~~~

## Lifecycle, Agent, Gate, And Command Matrix

| Order | Lifecycle Step | Purpose | Primary Agent(s) | Supporting Agent(s) | Has Its Own Gate? | Related Gate | Gate Command | Main AI Commands | Required / Typical Artifacts | Move Forward When |
|---:|---|---|---|---|---:|---|---|---|---|---|
| 01 | lifecycle/01-idea | Capture and evaluate the initial idea. | idea-analyst | sdlc-orchestrator, product-owner | Yes | idea-gate | aisdlc gate validate idea | idea/create, idea/analyze | idea-brief.md | Idea is clear enough for business analysis, assumptions are visible, Product Owner approves proceed/refine/defer decision. |
| 02 | lifecycle/02-business-analysis | Define business problem, goals, scope, business rules, assumptions, and stakeholder needs. | business-analyst | idea-analyst, product-owner | No, grouped with requirements | requirements-gate | aisdlc gate validate requirements | requirements/create-brd, requirements/find-gaps | brd.md | BRD is ready to pair with PRD for requirements validation. |
| 03 | lifecycle/03-requirements | Define product scope, functional requirements, NFRs, acceptance criteria, dependencies, risks, and approval. | product-owner | business-analyst, ux-reviewer, qa-engineer | Yes, grouped with BRD | requirements-gate | aisdlc gate validate requirements | requirements/create-prd, requirements/review-prd, requirements/find-gaps | prd.md | BRD and PRD are complete, testable, approved, and ready for architecture. |
| 04 | lifecycle/04-architecture | Define solution design, HLD, LLD, ADRs, contracts, data flow, risks, and technical approval. | solution-architect | integration-architect, database-architect, security-reviewer, devops-engineer | Yes | architecture-gate | aisdlc gate validate architecture | architecture/create-hld, architecture/create-lld, architecture/create-adr, architecture/review-architecture | hld.md, lld.md, adr-*.md | Architecture is approved and clear enough for story generation. |
| 05 | lifecycle/05-backlog | Hold generated and refined candidate stories before sprint commitment. | scrum-planner | product-owner, solution-architect, qa-engineer | No, grouped with sprint planning | sprint-readiness-gate | aisdlc gate validate sprint-readiness | sprint/generate-stories | PROJECTKEY-123-story.md | Stories are refined enough to be considered for sprint planning. |
| 06 | lifecycle/06-sprint-planning | Select sprint scope, define sprint goal, dependencies, risks, and readiness. | scrum-planner | product-owner, tech lead, qa-engineer | Yes, grouped with backlog | sprint-readiness-gate | aisdlc gate validate sprint-readiness | sprint/plan, sprint/check-readiness | sprint-plan.md | Stories are ready, blockers are visible, Product Owner and Tech Lead approve sprint readiness. |
| 07 | lifecycle/07-development | Implement approved stories and capture implementation evidence. | developer | security-reviewer, qa-engineer, solution-architect | No, grouped with PR review | development-gate | aisdlc gate validate development --service gateway-service | development/implement-story, development/explain-impact | implementation-summary.md, code changes, tests | Code is implemented, local/unit tests run, impact is explained. |
| 08 | lifecycle/08-pr-review | Review implementation before formal QA/testing sign-off. | developer | security-reviewer, solution-architect, qa-engineer | Yes, grouped as development readiness | development-gate | aisdlc gate validate development --service gateway-service | review/pr, review/security, review/architecture | pr-review.md, security-review.md, architecture-review.md | PR findings are resolved or explicitly accepted, service runtime files exist, development work is ready for QA. |
| 09 | lifecycle/09-testing | Capture formal QA evidence, coverage, defects, and QA approval. | qa-engineer | developer, product-owner, security-reviewer | Yes | testing-gate | aisdlc gate validate testing | qa/generate-test-cases, qa/review-coverage | test-summary.md, test-cases.md, coverage-review.md | QA evidence exists, defects are known, coverage gaps are accepted or fixed, QA/Product approval exists. |
| 10 | lifecycle/10-release | Prepare release notes, deployment checklist, rollback plan, known issues, and go/no-go evidence. | release-manager | qa-engineer, devops-engineer, security-reviewer, product-owner, tech lead | Yes | release-gate | aisdlc gate validate release | release/prepare, release/notes, release/checklist, release/rollback-plan | release-notes.md, deployment-checklist.md, rollback-plan.md | Release package is complete, risks are visible, rollback is ready, required humans approve. |
| 11 | lifecycle/11-deployment | Execute deployment and capture verification evidence. | devops-engineer | release-manager, qa-engineer | No default framework gate | CI/CD + release controls | Usually CI/CD command, not aisdlc gate | release/checklist, release/rollback-plan | deployment-log.md, smoke-test-results.md | Deployment succeeds, smoke tests pass, rollback is not needed or has been executed. |
| 12 | lifecycle/12-feedback | Capture monitoring, incidents, lessons learned, and next iteration input. | sdlc-orchestrator | product-owner, release-manager, devops-engineer, qa-engineer | No default framework gate | Feeds next iteration | No default gate | idea/create, sprint/generate-stories if feedback becomes new work | feedback.md, lessons-learned.md, incident-review.md | Feedback is triaged into new ideas, backlog items, fixes, or lessons learned. |

## Why Some Steps Do Not Have Their Own Gate

Not every folder needs a separate gate. Gates should check meaningful transitions, not create unnecessary bureaucracy.

| Group | Why It Shares A Gate |
|---|---|
| 02-business-analysis + 03-requirements | BRD and PRD should be validated together before architecture begins. |
| 05-backlog + 06-sprint-planning | Backlog stories and sprint plan must be checked together for readiness. |
| 07-development + 08-pr-review | Implementation and PR review together decide whether work is ready for formal QA/testing. |
| 11-deployment | Deployment is normally controlled by CI/CD, smoke tests, and release procedures rather than a generic framework gate. |
| 12-feedback | Feedback becomes input to the next idea/backlog cycle rather than a gate by itself. |

## Gate Summary

| Gate | Validates Transition From | Validates Transition To | Main Checks | Typical Statuses |
|---|---|---|---|---|
| idea-gate | Idea | Business Analysis | idea brief exists, required sections, open questions, Product Owner approval, AI idea review | PASSED, FAILED, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL |
| requirements-gate | Business Analysis + Requirements | Architecture | BRD/PRD exist, required sections, open questions threshold, Product Owner and Tech Lead approval, AI requirements review | PASSED, FAILED, NEEDS_IMPROVEMENT, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL |
| architecture-gate | Architecture | Backlog / Story Generation | HLD exists, required sections, open questions threshold, architecture approval, AI architecture review | PASSED, FAILED, NEEDS_IMPROVEMENT, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL |
| sprint-readiness-gate | Backlog + Sprint Planning | Development | sprint plan exists, readiness sections, open questions, Product Owner and Tech Lead approval, AI sprint readiness review | PASSED, FAILED, NEEDS_IMPROVEMENT, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL |
| development-gate | Development + PR Review | Testing | service runtime files exist, AGENTS.md rules exist, AI development review prompt, optional project-specific build/test checks | PASSED, FAILED, PENDING_AI_REVIEW |
| testing-gate | Testing | Release Preparation | test summary exists, coverage/defects/open questions sections, QA/Product approval, AI coverage review | PASSED, FAILED, NEEDS_IMPROVEMENT, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL |
| release-gate | Release Preparation | Deployment | release notes, deployment checklist, rollback plan, open questions, approvals, AI release readiness review | PASSED, FAILED, NEEDS_IMPROVEMENT, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL |

## AI Commands vs Gate Validation Commands

AI command files and gate validation commands are different things.

| Item | Type | What It Does | Example | When It Runs |
|---|---|---|---|---|
| AI command file | Markdown instruction for the AI | Tells the AI how to create, analyze, review, or prepare an artifact. | idea/create | Before validation, while producing or improving work. |
| Gate validation command | CLI command | Checks whether the lifecycle stage is complete enough to move forward. | aisdlc gate validate idea | After required artifacts exist. |

AI commands create or improve work. Gates check whether the work is ready.

### Example: Idea Stage Order

The correct order is:

~~~text
1. Use idea/create
2. Create lifecycle/01-idea/idea-brief.md
3. Use idea/analyze
4. Improve or analyze the idea artifact
5. Run aisdlc gate validate idea
6. Fix failures or move forward if the gate passes
~~~

### What idea/create Does

idea/create is an AI command file. It tells the AI how to create a structured idea brief.

Typical output:

~~~text
lifecycle/01-idea/idea-brief.md
~~~

It helps capture:

- overview
- business opportunity
- target users
- initial scope
- non-scope
- assumptions
- risks
- open questions
- approval section

### What idea/analyze Does

idea/analyze is also an AI command file. It tells the AI how to review and analyze the idea.

It checks questions such as:

- Is the problem clear?
- Is the business value clear?
- Are assumptions visible?
- Are risks captured?
- Are open questions actionable?
- Should the idea proceed, be refined, be deferred, or be rejected?

### What aisdlc gate validate idea Does

aisdlc gate validate idea is a CLI validation command. It does not create the idea brief. It checks whether the idea stage is ready to move forward.

It reads the idea gate definition and checks objective evidence such as:

- Does lifecycle/01-idea/idea-brief.md exist?
- Does it contain required sections?
- Are open questions within the allowed threshold?
- Is approval evidence present?
- Is an AI review required, and should a prompt be generated?

### Simple Analogy

~~~text
idea/create              = write the homework
idea/analyze             = review and improve the homework
aisdlc gate validate idea = checklist before moving to the next lesson
~~~

### What To Do If The Gate Fails

If aisdlc gate validate idea returns FAILED, PENDING_AI_REVIEW, PENDING_HUMAN_APPROVAL, or NEEDS_IMPROVEMENT:

1. Read the generated gate report under .aisdlc/generated/reports.
2. Fix the missing artifact, missing section, open question, approval, or quality issue.
3. If AI review is pending, run the generated prompt from .aisdlc/generated/prompts manually with the right AI agent.
4. Re-run aisdlc gate validate idea.
5. Move to business analysis only when the gate passes or a human approver explicitly accepts the exception.


## How To Work Through The Process

### Step 0: Install And Prepare The Project

Use once per governance repo. Run node scripts/install-framework.mjs, then aisdlc runtime materialize. This creates AGENTS.md, AI_CONTEXT.md, and sdlc.service.yml inside service repos.

### Step 1: Idea

Use idea/create and idea/analyze with idea-analyst. Create lifecycle/01-idea/idea-brief.md. Validate with aisdlc gate validate idea.

### Step 2: Business Analysis

Use requirements/create-brd and requirements/find-gaps with business-analyst. Create lifecycle/02-business-analysis/brd.md. This is validated together with PRD by requirements-gate.

### Step 3: Requirements

Use requirements/create-prd, requirements/review-prd, and requirements/find-gaps with product-owner, business-analyst, ux-reviewer, and qa-engineer. Create lifecycle/03-requirements/prd.md. Validate with aisdlc gate validate requirements.

### Step 4: Architecture

Use architecture/create-hld, create-lld, create-adr, and review-architecture with solution-architect and specialists. Create lifecycle/04-architecture/hld.md, lld.md, and adr files. Validate with aisdlc gate validate architecture.

### Step 5: Backlog

Use sprint/generate-stories with scrum-planner. Create stories under lifecycle/05-backlog. This is validated with sprint planning by sprint-readiness-gate.

### Step 6: Sprint Planning

Use sprint/plan and sprint/check-readiness with scrum-planner. Create lifecycle/06-sprint-planning/sprint-plan.md. Validate with aisdlc gate validate sprint-readiness.

### Step 7: Development

Work inside the service repo. Read AGENTS.md, AI_CONTEXT.md, sdlc.service.yml, and the related story. Use development/implement-story and development/explain-impact with developer. Capture lifecycle/07-development/implementation-summary.md.

### Step 8: PR Review

Use review/pr, review/security, and review/architecture. Create lifecycle/08-pr-review/pr-review.md, security-review.md, and architecture-review.md. Validate development readiness with aisdlc gate validate development --service gateway-service.

### Step 9: Testing

Use qa/generate-test-cases and qa/review-coverage with qa-engineer. Create lifecycle/09-testing/test-cases.md, coverage-review.md, and test-summary.md. Validate with aisdlc gate validate testing.

### Step 10: Release Preparation

Use release/prepare, release/notes, release/checklist, and release/rollback-plan with release-manager and supporting agents. Create release notes, deployment checklist, and rollback plan in lifecycle/10-release. Validate with aisdlc gate validate release.

### Step 11: Deployment

Deployment is controlled by CI/CD and release procedures. Create lifecycle/11-deployment/deployment-log.md and smoke-test-results.md. Verify pipeline, health checks, smoke tests, monitoring, and rollback status.

### Step 12: Feedback

Use feedback to start the next iteration. Create lifecycle/12-feedback/feedback.md, lessons-learned.md, or incident-review.md. Feed accepted items into ideas or backlog.

## What To Do With Gate Results

| Gate Result | Meaning | What To Do |
|---|---|---|
| PASSED | Required checks passed. | Move to the next lifecycle stage. |
| FAILED | A blocker script/objective check failed. | Fix missing files, sections, tests, or required evidence. |
| PENDING_AI_REVIEW | The gate needs qualitative AI review. | Run the generated prompt from .aisdlc/generated/prompts and save the result. |
| PENDING_HUMAN_APPROVAL | Required approval evidence is missing. | Get the correct human role to approve or reject in the artifact Approval section. |
| NEEDS_IMPROVEMENT | Non-blocker quality threshold or major issue needs work. | Improve the artifact and rerun the gate. |
| CONFIGURATION_ERROR | Gate or project setup is invalid. | Fix YAML paths, gate config, framework install, or project configuration. |

## Recommended Daily Working Pattern

1. Identify the lifecycle folder you are working in.
2. Read that folder README.md.
3. Read the related skill under .aisdlc/framework/skills.
4. Read the responsible agent file under .aisdlc/framework/agents.
5. Read the relevant command file under .aisdlc/framework/commands.
6. Create or update the lifecycle artifact.
7. Run the related gate when the stage is ready.
8. Fix missing evidence, AI review, or approval gaps.
9. Move to the next numbered lifecycle folder only when the gate is passed or an approved exception exists.

## Key Rule Of Thumb

~~~text
If a decision changes business scope, architecture direction, security posture, release readiness, or risk acceptance, AI can recommend but humans must approve.
~~~
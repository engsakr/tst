---
name: implementation-review
description: Implement and review service changes under AI-SDLC governance. Use for story implementation, code impact analysis, PR review, test coverage checks, security review, service runtime context, and development gate readiness.
---

# Implementation Review

Use this skill when working inside a service repository after runtime materialization.

## Core Workflow

1. Read AGENTS.md, AI_CONTEXT.md, and sdlc.service.yml before editing or reviewing code.
2. Read the related story, acceptance criteria, and relevant governance standards.
3. Inspect existing code patterns before changing anything.
4. Implement the smallest scoped change that satisfies the story.
5. Add or update tests for every behavior change.
6. Run configured build/test commands when available.
7. For review, compare changed files against story scope, standards, tests, security, and risk.
8. Report findings with severity and required changes first.

## Review Focus

- Story and acceptance criteria alignment.
- Edge cases and error handling.
- Test coverage and regression risk.
- API or contract compatibility.
- Security-sensitive issues: secrets, unsafe logs, authorization, validation, data exposure.
- Consistency with existing patterns.
- Operational impact: config, logging, health, deployability, rollback.

## Output Contract

For implementation, report summary, files changed, tests, validation, risks, and open questions.

For review, report findings first, then required changes, suggestions, test gaps, security risks, residual risks, and final recommendation.

## Guardrails

- Do not implement unapproved scope.
- Do not skip tests silently.
- Do not rewrite unrelated code.
- Do not expose secrets in output.
- Do not approve your own changes as a human reviewer.

## Related Framework Assets

- agents/developer.md
- agents/qa-engineer.md
- agents/security-reviewer.md
- commands/development/implement-story.md
- commands/development/explain-impact.md
- commands/review/pr.md
- commands/review/security.md
- commands/qa/review-coverage.md
- gates/development-gate.yml

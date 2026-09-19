---
name: gate-validation
description: Validate AI-SDLC lifecycle gates and interpret gate reports. Use for gate YAML design, file_exists checks, markdown_sections checks, open question thresholds, approval evidence, shell_command checks, AI review prompts, gate reports, and readiness decisions.
---

# Gate Validation

Use this skill when designing, running, or interpreting AI-SDLC gates.

## Core Workflow

1. Resolve the gate file from .aisdlc/framework/gates/<gate-name>-gate.yml.
2. Read required_artifacts, required_sections, checks, decision, and report output.
3. Validate objective facts with scripts or CLI checks:
   - file_exists
   - markdown_sections
   - open_questions_threshold
   - approval_table
   - shell_command when explicitly configured
4. Generate an AI review prompt for ai_review checks. Do not call external AI APIs in MVP.
5. Apply decision logic:
   - blocker failure means FAILED.
   - missing AI review means PENDING_AI_REVIEW.
   - missing human approval means PENDING_HUMAN_APPROVAL.
   - otherwise PASSED when all required checks clear.
6. Write a Markdown report under .aisdlc/generated/reports/.

## Gate Design Quality Bar

- Gate files describe purpose, owners, principles, entry criteria, and exit criteria.
- Checks validate objective facts and do not embed executable implementation logic beyond explicit shell_command checks.
- AI review focus is specific and tied to the stage.
- Human approval roles are explicit.
- Reports are actionable.

## Troubleshooting

- Missing artifact: create or move the expected file.
- Missing section: add a Markdown heading matching the gate requirement.
- Too many open questions: resolve or document human-approved exceptions.
- Approval missing: add an Approval section table with required roles and allowed decisions.
- Pending AI review: run the generated prompt manually with the chosen AI agent and store the result.

## Guardrails

- Do not mark a gate passed manually without evidence.
- Do not hide blocker failures behind AI review.
- Do not use shell_command unless the command is explicitly configured and safe to run.
- Do not treat qualitative AI review as a replacement for human approval.

## Related Framework Assets

- gates/idea-gate.yml
- gates/requirements-gate.yml
- gates/architecture-gate.yml
- gates/sprint-readiness-gate.yml
- gates/development-gate.yml
- gates/testing-gate.yml
- gates/release-gate.yml

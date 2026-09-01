---
id: review-security
name: Review Security
description: Review requirements, architecture, or code for security risks and required mitigations.
agent: security-reviewer
lifecycle_stage: security-review
artifact_type: security-review
version: 1.0.0
---

# Review Security

## Purpose

Find security issues early and provide practical remediation guidance.

## Use This Command When

- A feature handles inputs, identity, secrets, logs, data, or external calls.
- A PR needs security review.
- A release needs security confidence.

## Required Inputs

- Requirements or story.
- Architecture artifacts or changed code.
- Security standards and known threat context.

## Context To Read First

- standards/security/
- lifecycle/03-requirements/prd.md
- lifecycle/04-architecture/
- Changed code and configs
- Dependency manifests when available.

## Operating Procedure

1. Identify assets, actors, data, trust boundaries, and threat surface.
2. Review authentication, authorization, input validation, data exposure, logging, secrets, and dependency risks.
3. Classify findings by severity and exploitability.
4. Recommend fixes, compensating controls, or human risk acceptance.
5. Identify release blockers.
6. Prepare security recommendation.

## Output Format

Produce Markdown with these sections:

- Summary
- Threat Surface
- Findings
- Severity and Rationale
- Required Fixes
- Suggested Hardening
- Residual Risk
- Recommendation

## Quality Checklist

- Findings are specific.
- Severity is justified.
- No secret values are printed.
- Remediation is practical.

## Guardrails

- Do not invent facts. Mark uncertain items as assumptions or open questions.
- Do not approve on behalf of humans. Prepare approval evidence only.
- Keep generated artifacts reviewable and traceable to source inputs.
- Do not call external services or APIs unless explicitly requested by the user.
- If source artifacts conflict, stop and report the conflict before continuing.
- Never include raw secrets in output.
- Do not claim security approval without human security sign-off when required.

## Done Criteria

- Security risks are visible.
- Required fixes are clear.
- Release or merge recommendation is explicit.

## Evidence Handling

- Cite source artifacts by path when making a claim.
- If evidence is missing, create an open question instead of filling the gap with an assumption.
- Keep assumptions separate from confirmed requirements, decisions, or validation results.
- When reviewing, classify evidence as present, missing, conflicting, or not applicable.
- When generating an artifact, include enough traceability for the next lifecycle role to continue without rereading the full conversation.

## Self-Review Questions

- Did I read the required context before producing output?
- Did I distinguish facts, assumptions, risks, decisions, and open questions?
- Is every required change actionable by a clear role?
- Can the next lifecycle stage use this output without guessing?
- Have I avoided approving decisions that require human ownership?

## Common Failure Modes

- Producing a polished artifact that hides unresolved questions.
- Mixing recommendations with approved decisions.
- Skipping standards because the input sounded straightforward.
- Writing generic advice that does not point to the artifact, service, or lifecycle stage.
- Treating AI qualitative review as a replacement for script checks, tests, or human approval.

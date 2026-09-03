---
name: service-runtime-materialization
description: Generate and maintain lightweight AI runtime files in service repositories. Use for AGENTS.md, AI_CONTEXT.md, CLAUDE.md, sdlc.service.yml, selected service agents, selected AI command files, managed sections, and runtime materialization troubleshooting.
---

# Service Runtime Materialization

Use this skill when injecting AI-SDLC runtime context into service repositories.

## Core Workflow

1. Read governance.yml for enabled runtimes and template target paths.
2. Read services.yml for service definitions, commands, language, framework, selected agents, and selected commands.
3. Generate only lightweight runtime files into service repositories:
   - AGENTS.md for Codex runtime.
   - AI_CONTEXT.md for generic runtime.
   - CLAUDE.md and .claude/ only when Claude runtime is enabled.
   - sdlc.service.yml for service metadata and build/test commands.
4. Copy selected agents and command Markdown files only when the target runtime requires them.
5. Use managed section markers when regenerating content.
6. Preserve manual content outside managed sections.
7. Update sdlc.lock with materialization timestamp.

## Managed File Rules

- Replace only content between AI-SDLC managed markers.
- If a file exists without managed markers, back it up before overwriting.
- Never silently overwrite manual files.
- Never copy full framework folders into service repositories.

## Runtime Selection Rules

- Codex runtime needs AGENTS.md.
- Generic runtime needs AI_CONTEXT.md.
- Claude runtime needs CLAUDE.md and optional .claude/agents and .claude/commands.
- Services may choose a subset of agents and commands to keep runtime context small.

## Guardrails

- Do not write outside the governance root or configured service path.
- Do not materialize secrets or tokens.
- Do not assume every service has the same language or build command.
- Do not generate Claude files when Claude is disabled.

## Related Framework Assets

- templates/AGENTS.md.tpl
- templates/AI_CONTEXT.md.tpl
- templates/CLAUDE.md.tpl
- templates/sdlc.service.yml.tpl
- agents/developer.md
- agents/qa-engineer.md
- agents/security-reviewer.md

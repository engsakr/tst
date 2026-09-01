# Workspace

Your own code for this project lives here — backend microservices and frontend applications alike
(organize them however you like, e.g. `workspace/services/*` and `workspace/apps/*`).

**Each service or app should be its own Git repository (or a Git submodule)** — keep it out of this
repository's history. The AI-SDLC platform manages only `framework/`, `governance/`, and `artifacts/`
in this repository and pushes in memory, so it never overwrites or deletes anything under `workspace/`.

## Wiring a new service to the framework + governance

When you create a new service here, link it to the project so Claude Code knows the framework (skills,
agents, commands, gates) and must follow the project's governance. The wiring scripts are **install-free**
— they use tooling that already ships with your OS (no Node.js required). Run the one for your platform
from inside the new service folder:

**Windows** (PowerShell — preinstalled):

```powershell
cd workspace\services\payments-api        # your new service folder (its own git repo)
powershell -ExecutionPolicy Bypass -File ..\..\.sdlc\sdlc.ps1 init -Name payments-api -Type backend
powershell -ExecutionPolicy Bypass -File ..\..\.sdlc\sdlc.ps1 init -Name gateway     # -Type defaults to "all"
```

**macOS / Linux** (POSIX shell — preinstalled):

```bash
cd workspace/services/payments-api        # your new service folder (its own git repo)
sh ../../.sdlc/sdlc.sh init --name payments-api --type backend
sh ../../.sdlc/sdlc.sh init --name gateway            # --type defaults to "all"
```

`--type` / `-Type` is one of `all | backend | frontend | data | infra` and selects which governance
standards are imported. **`all` (the default) imports every governance folder**; a specific type imports
only its relevant subset (a backend service gets backend + architecture + security + devops + qa; a
frontend app gets frontend + architecture + qa; etc.).

This generates, in the service:

- **`CLAUDE.md`** — a managed "Project context" block that `@`-imports the relevant governance standards
  and the project's requirements/design (BRD/PRD/HLD), so Claude loads the rules and the spec.
- **`.claude/settings.json`** — enables the `sdlc` Claude Code plugin (this project's `framework/`
  published as a plugin), giving the service every framework skill/agent/command.
- **`.sdlc/service.json`** — the durable link record (project, type, framework pin).

After a framework or governance change at the project level, re-link with `sync` (same script, `sync`
instead of `init`):

```powershell
powershell -ExecutionPolicy Bypass -File ..\..\.sdlc\sdlc.ps1 sync     # Windows
```

```bash
sh ../../.sdlc/sdlc.sh sync                                            # macOS / Linux
```

`git diff` then shows exactly what the standards update changed. The framework is **pinned** at install
time (a snapshot), so nothing shifts under you until you run `sync` deliberately.

# AHMED — AHMED

Repository layout:

- `framework/` — AI-SDLC framework, also published as the `sdlc` Claude Code plugin (platform-managed)
- `governance/` — governance standards (platform-managed)
- `artifacts/` — lifecycle governance documents (platform-managed)
- `workspace/` — your implementation code: backend services + frontend apps (each its own repo/submodule)

New services link to the framework + governance with the workspace CLI — see `workspace/README.md`.

Everything under `framework/`, `governance/`, and `artifacts/` is written by the platform. Any other folder you add is preserved untouched on every push.

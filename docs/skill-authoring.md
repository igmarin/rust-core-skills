# Skill authoring

- Add one folder under `skills/<name>/` with a self-sufficient `SKILL.md`.
- Put task-specific rules in that skill. `rust-essentials` owns project context, pinned-version API evidence, idiomatic ownership, errors, and verification.
- Add an optional reference only when it saves repeated explanation; tell the agent to load it only when needed.
- Do not require human approval for routine code or tests. Reserve checkpoints for destructive operations, production risk, security, and unresolved external facts.
- Register the skill in `directory.json`; update `skills.sh.json` only for useful display grouping.
- Validate the profile from the local project collection with `python3 ../agnostic-planning-skills/scripts/validate-profiles.py`.

# Repository guidance

- `directory.json` is the registry; keep registered paths valid.
- This pack is a project profile, not an independent router or workflow engine.
- `rust-essentials` owns the shared implementation baseline and crate-version checks.
- Keep ownership, type design, and error handling cards focused on their distinct Rust concerns.
- Do not state universal rules that force unnecessary clones, boxes, newtypes, or dependencies.
- Run `python3 ../agnostic-planning-skills/scripts/validate-profiles.py` from the local project collection before release.

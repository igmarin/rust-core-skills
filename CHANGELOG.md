# Changelog
## [1.0.0] - 2026-09-26

Breaking skill-profile release. See README.md for the migration map.


## [Unreleased]

- White-canvas catalog: FCIS docs, taxonomy, `directory.json`, language spine skills, TDD playbook.
- Preserve catalog identities while linking every skill to a portable execution contract: existing authorization, truthful test evidence, project conventions, and resumable handoffs.
- Repair routing and instruction contradictions without changing supported capabilities.
- rs-guard 1.8.0: `.reviewer.toml`, `.github/review-prompt.md`, PR workflow, pre-commit hook, install/smoke scripts.
- `skills.sh.json` groupings for a skills.sh repo page (written skills only).
- Catalog review: `directory.json` lists only skills on disk; FCIS ladder only in `docs/fcis-rust.md`; quality commands in `docs/skill-authoring.md`; playbook review path reserved as `code-review-playbook`.
- `.markdownlint.yaml` (MD013/MD060 off, matching rails-agent-skills); `CLAUDE.md` first-line heading.
- Pack name: `igmarin/rust-core-skills` (catalog, README, skills.sh, rs-guard prompt).
- Flatten `skills/<name>/SKILL.md` and drop root `SKILL.md` so `npx skills add` can install all or one skill.
- README, AGENTS.md, and docs match the slim pack layout used by rails-agent-skills and agnostic-planning-skills (catalog table, install picker, Docs table, host stubs).

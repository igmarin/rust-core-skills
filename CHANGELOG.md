# Changelog

## [Unreleased]

- White-canvas catalog: FCIS docs, taxonomy, `directory.json`, language spine skills, TDD playbook.
- rs-guard 1.8.0: `.reviewer.toml`, `.github/review-prompt.md`, PR workflow, pre-commit hook, install/smoke scripts.
- `skills.sh.json` groupings for a skills.sh repo page (written skills only).
- Catalog review: `directory.json` lists only skills on disk; FCIS ladder only in `docs/fcis-rust.md`; quality commands in `docs/skill-authoring.md`; playbook review path reserved as `code-review-playbook`.
- `.markdownlint.yaml` (MD013/MD060 off, matching rails-agent-skills); `CLAUDE.md` first-line heading.
- Pack name: `igmarin/rust-core-skills` (catalog, README, skills.sh, rs-guard prompt).
- Flatten `skills/<name>/SKILL.md` and drop root `SKILL.md` so `npx skills add` can install all or one skill.

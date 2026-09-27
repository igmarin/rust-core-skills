# Contributing to rust-core-skills

This repository follows a Markdown + YAML frontmatter architecture for skills.

## Getting started

1. Clone the repository
2. Read [AGENTS.md](AGENTS.md) and [docs/architecture.md](docs/architecture.md)

## Adding a skill

1. Create `skills/<skill-name>/SKILL.md` following [docs/skill-authoring.md](docs/skill-authoring.md)
2. `name` in frontmatter **must equal** the directory name
3. Register in `directory.json`; update `skills.sh.json` only if the display grouping needs it.
4. Add it to the `rust` profile in the sibling `agnostic-planning-skills/profiles.json` only when it belongs in the installed profile.
5. Mention user-facing changes in `CHANGELOG.md`.

Do not add a root `SKILL.md`. Layout is flat: `skills/<name>/SKILL.md`.

## Local review with rs-guard

PRs are reviewed by [rs-guard](https://github.com/nebulaideas/rs-guard) in CI. Locally (advisory):

```bash
git add <files>
bash hooks/pre-commit-rs-guard
```

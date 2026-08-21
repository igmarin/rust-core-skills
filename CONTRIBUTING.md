# Contributing to rust-core-skills

This repository follows a Markdown + YAML frontmatter architecture for skills.

## Getting started

1. Clone the repository
2. Read [AGENTS.md](AGENTS.md) and [docs/architecture.md](docs/architecture.md)

## Adding a skill

1. Create `skills/<skill-name>/SKILL.md` following [docs/skill-authoring.md](docs/skill-authoring.md)
2. `name` in frontmatter **must equal** the directory name
3. Register in `directory.json` and group in `skills.sh.json`
4. Add the skill to [docs/reference/skill-catalog.md](docs/reference/skill-catalog.md)
5. Update `rust-skill-router` if the route table should mention it
6. Playbooks also go in [docs/playbooks.md](docs/playbooks.md)
7. Mention user-facing changes in `CHANGELOG.md`

Do not add a root `SKILL.md`. Layout is flat: `skills/<name>/SKILL.md`.

## Local review with rs-guard

PRs are reviewed by [rs-guard](https://github.com/nebulaideas/rs-guard) in CI. Locally (advisory):

```bash
git add <files>
bash hooks/pre-commit-rs-guard
```

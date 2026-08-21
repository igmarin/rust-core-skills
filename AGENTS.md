# Agent guidance for rust-core-skills

Single source of truth for work **in this repository**. Skills the pack teaches live under `skills/`.

## What this repo is

A public Rust skill pack: atomics, playbooks, one orchestrator. Complements planning / ruby-core / rails / elixir. Not a 265-rule cheat sheet.

FP and ponytail: [`docs/fcis-rust.md`](docs/fcis-rust.md). Quality commands: [`docs/skill-authoring.md`](docs/skill-authoring.md).

## Layout

See `docs/taxonomy.md`. Docs: `docs/fcis-rust.md`, `docs/playbooks.md`, `docs/skill-authoring.md`, `docs/topic-inventory.md`.

## Precedence

1. `skills/**/SKILL.md`
2. This file
3. `docs/fcis-rust.md` and other `docs/`
4. `README.md` (human catalog)

## Authoring

Follow `docs/skill-authoring.md`. No stubs. `directory.json` lists only skills that exist on disk. Planned IDs: `docs/topic-inventory.md`. No machine paths. No vendoring ponytail.

## Portability

Before finishing a skill, grep it for `/Users/`, `/home/`, `C:\`, vault paths, tokens.

## Validation

Before commit:

```bash
git diff --cached --unified=5 > /tmp/staged.diff
# rs-guard 1.8.0 — prompt: .github/review-prompt.md
rs-guard --diff-file /tmp/staged.diff --rules-file .github/review-prompt.md --dry-run  --model deepseek-v4-flash
```

CI installs via `scripts/rs-guard-install.sh` (`cargo install rs-guard --locked --version 1.8.0`). Pre-commit: `hooks/pre-commit-rs-guard` (advisory).

Also: `directory.json` paths for **written** skills exist on disk; atomics prefer < 120 lines; playbooks < 160.

## Out of scope here

Do not edit `agnostic-planning-skills`, `ruby-core-skills`, `rails-agent-skills`, or `elixir-phoenix-skills` from this canvas. Runtime pack registration is a follow-up in `agent-mcp-runtime`.

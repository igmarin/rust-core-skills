# Rust Core Skills

Agent skills for idiomatic Rust: FCIS, ownership, type-driven design, cargo TDD.

Canonical FP: [`docs/fcis-rust.md`](docs/fcis-rust.md).

## Ecosystem

This pack is the Rust language layer. It does not replace the others.

| Repo | Role |
|------|------|
| [`agnostic-planning-skills`](https://github.com/igmarin/agnostic-planning-skills) | PRD, tickets, sprint |
| [`ruby-core-skills`](https://github.com/igmarin/ruby-core-skills) | Ruby process + DDD |
| [`rails-agent-skills`](https://github.com/igmarin/rails-agent-skills) | Rails |
| [`elixir-phoenix-skills`](https://github.com/igmarin/elixir-phoenix-skills) | Elixir / Phoenix |
| **rust-core-skills** (this repo) | Rust / cargo |
| [`agent-mcp-runtime`](https://github.com/igmarin/agent-mcp-runtime) | Pack loader |

Depends on planning for PRDs. Does **not** depend on ruby-core.

## Catalog

`directory.json` is the registry of **written** skills: 5 atomics, 1 playbook, 1 orchestrator. Planned names: [`docs/topic-inventory.md`](docs/topic-inventory.md).

Agent router: [`skills/rust-skill-router/SKILL.md`](skills/rust-skill-router/SKILL.md). Conventions: [`AGENTS.md`](AGENTS.md). FP: [`docs/fcis-rust.md`](docs/fcis-rust.md).

## Install

There is **no** root `SKILL.md`. Each folder under `skills/` is its own skill, so the CLI can prompt for **all** or **one**.

```bash
# picker: all skills, or a subset
npx skills add igmarin/rust-core-skills

# all skills, skip prompts
npx skills add igmarin/rust-core-skills --skill '*'

# one skill
npx skills add igmarin/rust-core-skills --skill rust-essentials
```

Repo page: [skills.sh/igmarin/rust-core-skills](https://skills.sh/igmarin/rust-core-skills). Groupings: [`skills.sh.json`](skills.sh.json) (display only).

After install, use `load-context` on an existing crate, then `tdd` or `rust-essentials`. Do not copy paths from someone else’s home directory.

Skill diffs are reviewed with **rs-guard 1.8.0** using [`.github/review-prompt.md`](.github/review-prompt.md). Local: `cargo install rs-guard --version 1.8.0 --locked`.

## License

MIT

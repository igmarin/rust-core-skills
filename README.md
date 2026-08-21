# Rust Skills

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
| **rust-skills** (this repo) | Rust / cargo |
| [`agent-mcp-runtime`](https://github.com/igmarin/agent-mcp-runtime) | Pack loader |

Depends on planning for PRDs. Does **not** depend on ruby-core.

## Catalog

`directory.json` is the registry of **written** skills: 5 atomics, 1 playbook, 1 orchestrator. Planned names: [`docs/topic-inventory.md`](docs/topic-inventory.md).

Entry for agents: [`SKILL.md`](SKILL.md). Conventions: [`AGENTS.md`](AGENTS.md). FP rules: [`docs/fcis-rust.md`](docs/fcis-rust.md).

## Install

Once this repo is public on GitHub as `igmarin/rust-skills`:

```bash
npx skills add igmarin/rust-skills
```

Repo page: [skills.sh/igmarin/rust-skills](https://skills.sh/igmarin/rust-skills). Groupings for that page live in [`skills.sh.json`](skills.sh.json) (display only; it does not change `SKILL.md` files).

Load `SKILL.md`, then `load-context` (existing crates) and the matching playbook. Do not install this pack by copying paths from someone else’s home directory.

Skill diffs are reviewed with **rs-guard 1.8.0** using [`.github/review-prompt.md`](.github/review-prompt.md). Local: `cargo install rs-guard --version 1.8.0 --locked`.

## License

MIT

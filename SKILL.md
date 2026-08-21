---
name: rust-core-skills
type: catalog
tags: [catalog]
description: >
  Entry point for idiomatic Rust agent work: FCIS, ownership, type-driven
  design, cargo TDD, clap CLIs, tokio. Invoke for any .rs change, crate
  setup, review, or refactor. Complements agnostic-planning-skills (PRDs),
  ruby-core-skills, rails-agent-skills, and elixir-phoenix-skills.
  Trigger: rust, rust-core-skills, cargo, clap, tokio, ownership, Result, TDD rust.
license: MIT
metadata:
  version: "0.1.0"
  user-invocable: "true"
---

# Rust Core Skills

**Canonical FP:** [docs/fcis-rust.md](docs/fcis-rust.md)

## HARD-GATE

```text
DO NOT write Rust on an existing crate until load-context has posted a Context Summary.
DO NOT add a crate when std or an existing Cargo.toml dep covers it.
Planning/PRD/tickets → agnostic-planning-skills, not this pack.
New or changed behaviour → playbook tdd (red test before impl lives there).
```

## Route

Only names in `directory.json` (files on disk). Anything else: `rust-essentials` and, if behaviour changes, `tdd`.

| Task | Skill |
|------|--------|
| Unclear / several concerns | `rust-skill-router` |
| Existing crate, first | `load-context` |
| New or changed behaviour | playbook `tdd` |
| Clone / lifetime / Arc | `ownership-borrowing` |
| Newtype / enum state | `type-driven-design` |
| unwrap / thiserror | `error-handling` |
| Any `.rs` | `rust-essentials` |

Registry: `directory.json`. Authoring: `docs/skill-authoring.md`. Planned IDs: `docs/topic-inventory.md` (not loadable).

---
name: rust-skill-router
type: orchestrator
tags: [orchestration]
license: MIT
description: >
  Routes a Rust task to one playbook or atomic. Does not implement.
  First response line MUST be "Next skill: skills/<domain>/<name>".
  Trigger: where do I start, rust help, which skill, rust-skills.
metadata:
  version: "1.0.0"
  user-invocable: "true"
---

# Rust skill router

## Goal

Pick **one** next skill. Do not write application code here.

## Inputs / outputs

- In: the user request
- Out: the skill path to load, and nothing else

## Reads / writes

- Read: this file, `directory.json`, root `SKILL.md`
- Write: none

## Approval

None.

## Route

Load only paths that exist in `directory.json`. No skill yet → `Next skill: skills/rust-core/rust-essentials` (and `skills/playbooks/tdd` if behaviour changes).

| If the request is… | Next skill |
|--------------------|------------|
| PRD / tickets / sprint | **stop** — `agnostic-planning-skills` |
| Existing crate, first action | `skills/project/load-context` |
| New or changed behaviour / TDD / bug | `skills/playbooks/tdd` |
| Clone / lifetime / Arc | `skills/rust-core/ownership-borrowing` |
| Newtype / enum state | `skills/rust-core/type-driven-design` |
| unwrap / thiserror | `skills/rust-core/error-handling` |
| Anything `.rs`, including clap/tokio/unsafe/clippy until those skills exist | `skills/rust-core/rust-essentials` |

Several rows match → `load-context` then `tdd`.

## Steps

1. Classify with the table
2. First line: `Next skill: skills/<domain>/<name>`
3. Stop — do not write crate code

## Validation

No `.rs` in the crate was written in this turn.

## Integration

Root catalog: `SKILL.md`. Registry: `directory.json`.

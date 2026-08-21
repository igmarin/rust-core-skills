# Skill authoring

Portable, lean, gated. A skill is done when an agent can execute it — not when every edge case has a paragraph.

## Define first (in the SKILL.md)

1. Name and trigger
2. Goal
3. Inputs / outputs
4. Allowed reads
5. Allowed writes
6. Approval gates
7. Validation

## Location

`skills/<domain>/<skill-name>/SKILL.md`

Project-relative paths only (`Cargo.toml`, `src/`, `tests/`, `assets/` in the skill folder). No `/Users/`, `/home/`, `C:\`, vaults, `~/.cargo` as a default.

Do not install toolchains or add crates without an approval gate.

## Length

- Atomic: prefer **< 120 lines**. Stop after rules + one ✅/❌ pair + gates.
- Playbook: prefer **< 160 lines**. Orchestrate; do not re-teach.
- Delete “why it matters.” The rule and the example are the skill.

## Template (atomic)

```yaml
---
name: example-skill
type: atomic
tags: [atomic]
license: MIT
description: >
  Trigger-rich. What to invoke and when. Trigger: …
metadata:
  version: "1.0.0"
  user-invocable: "true"
---
```

`metadata.version` and `metadata.user-invocable: "true"` (string) are required. Playbooks also need `entry_point`, `phases`, `hard_gates`, and `dependencies`.

Then, in this order: Goal · Inputs / outputs · Reads / writes · Approval · RULES · one example pair · Steps (short) · Validation · Pitfalls · Integration.

## Ponytail on the text

Std before crates. One example pair, not five. One home per fact. If the prose is longer than the examples, cut the prose.

Never lazy about: boundary parsing, `Result`, unsafe comments, secrets, a failing test for non-trivial logic.

## Portability scan (before done)

Grep the skill and `assets/` for `/Users/`, `/home/`, `C:\`, `~/.cursor`, `~/.claude`, `~/.grok`, tokens, and crate names from other personal repos used as if they were the user’s crate. Fix every hit.

## Allowed vs gated

| Free | Needs approval |
|------|----------------|
| Read current crate; `cargo test <test_name> -- --exact`; fmt/clippy check | New dependency; rustup; writes outside the crate; push; publish |

## Quality commands

Single home. Copy these strings; do not invent `cargo test <file>`.

RED:

```bash
cargo test <test_name> -- --exact
```

Done:

```bash
cargo fmt --check
cargo clippy --all-targets -- -D warnings
cargo test
```

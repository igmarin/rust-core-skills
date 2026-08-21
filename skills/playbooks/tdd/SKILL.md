---
name: tdd
type: playbook
tags: [playbooks]
license: MIT
description: >
  Cargo TDD with HITL: failing test for the right reason, user approves, green,
  refactor, fmt/clippy. Trigger: tdd, red-green-refactor, test first, cargo test.
metadata:
  version: "1.0.0"
  user-invocable: "true"
  entry_point: true
  phases: "Phase 1: Context and RED, Phase 2: HITL approve and GREEN, Phase 3: Refactor, Phase 4: Quality"
  hard_gates: "Test fails for missing behaviour, User approval, Quality gate green"
  dependencies:
    source: self
    skills:
      - load-context
      - rust-essentials
---

# TDD playbook

## HARD-GATE

- No implementation until a test exists, was run, and failed because behaviour is missing (not because of compile noise you have not fixed in the test).
- Implementation waits for **explicit user approval**.
- Quality gate before you call it done — same commands as `docs/skill-authoring.md`: `cargo fmt --check`, `cargo clippy --all-targets -- -D warnings`, `cargo test`.

## When to use

New or changed behaviour in a Rust crate. Prefer unit tests next to the module; `tests/` only for public-API contracts.

## Loads

| Skill | Role |
|-------|------|
| `load-context` | existing crates |
| `rust-essentials` | apply `docs/fcis-rust.md` |

## Phases

1. **Context + RED** — `load-context` if the crate exists. Write the smallest failing test. Run `cargo test <test_name> -- --exact`.
2. **HITL + GREEN** — show the test + failure. Wait. Implement only what was approved. Re-run until green.
3. **Refactor** — behaviour unchanged; re-run after each step.
4. **Quality** — fmt, clippy `-D warnings`, `cargo test` for the crate.

## Validation

- RED: failure is missing behaviour
- User said to implement
- GREEN on the target test
- fmt/clippy/test exit 0

## Error recovery

| Problem | Action |
|---------|--------|
| Test does not compile | fix the test; stay in RED |
| Still red after impl | smallest fix; re-approve if the approach changed |
| Refactor red | revert last step |
| Clippy red | fix; do not `#[allow]` to skip the gate |

## Output

```text
## TDD Report
**Behaviour:** …
**Test:** `path` / `test_name`
**RED:** command + reason
**Approval:** yes/no
**GREEN:** command
**Quality:** fmt / clippy / test
**Skipped (ponytail):** …
```

## Integration

Atomics during GREEN: `type-driven-design`, `error-handling`, `ownership-borrowing` as needed. Do not skip `rust-essentials`.

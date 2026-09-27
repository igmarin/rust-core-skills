---
name: rust-essentials
type: atomic
description: Use for Rust implementation and crate API work. Establish project conventions, ownership, error handling, and version evidence before changing Rust code.
metadata:
  user-invocable: "true"
---

# Rust Essentials

Read the crate's instructions, `Cargo.toml`, `Cargo.lock`, toolchain file, and the smallest relevant source/test neighbor. Follow the existing architecture and dependency choices.

## API evidence

Before using a crate method, feature, or import path, verify it for the pinned version from the lockfile and local crate source/docs, or compile a minimal use. Never infer an API from a newer example. Prove the change with `cargo check` or a focused test.

## Implementation

- Parse untrusted input at the boundary; use types that encode meaningful invariants when they simplify callers.
- Prefer borrowing (`&str`, slices, references) when ownership need not transfer. Clone when it makes ownership clearer or is required; explain only non-obvious costs.
- Use `Result` and `?` for expected failures. Reserve `unwrap`/`expect` for proven invariants or tests.
- Prefer standard library and existing dependencies. Add a crate only when the task needs it and its API/version are verified.
- Use `Box`, `Arc`, `Rc`, and interior mutability when their ownership or layout semantics fit; do not add them as generic performance fixes.
- Keep unsafe blocks rare and document the invariant that makes each block sound.

For a focused question, use `ownership-borrowing`, `type-driven-design`, or `error-handling` from the active profile.

## Verification

Run `cargo fmt --check`, `cargo check`, focused tests, then `cargo clippy --all-targets -- -D warnings` and `cargo test` when the project supports them. A behavior change needs a test for the changed behavior; a mechanical refactor can rely on existing coverage plus compilation.

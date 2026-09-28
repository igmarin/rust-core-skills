# Rust Core Skills

A compact Rust profile for project work and deliberate learning. Install it alongside the shared `foundation` profile; the profile manifest is in the agnostic planning pack.

## Core cards

- `rust-essentials`: project context, exact-version API evidence, implementation, and verification.
- `ownership-borrowing`: ownership, lifetimes, clones, and shared state.
- `type-driven-design`: enums, newtypes, boundary parsing, and typestate when it pays for itself.
- `error-handling`: typed errors and propagation that fit the existing crate.

## Migration

| Old skill | Use |
|---|---|
| `load-context`, `tdd`, `rust-skill-router` | `agnostic-planning-skills:work-router` selects one Rust card; `rust-essentials` performs the project preflight |

Verify crate APIs against `Cargo.lock` and compiler/docs evidence. Start at the [docs index](docs/index.md) for maintainer notes.

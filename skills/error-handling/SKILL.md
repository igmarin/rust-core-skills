---
name: error-handling
type: atomic
description: Use when changing Rust error propagation, public error types, or recoverable failure behavior.
metadata:
  user-invocable: "true"
---

# Error Handling

Preserve the crate's existing error contract. Use `Result` for failures callers can handle; reserve panic for violated internal invariants.

- Propagate expected errors with `?` and add context at the boundary where it helps diagnose the operation.
- Preserve typed errors when they are part of a library's public API. A small enum or the crate's existing error dependency is sufficient.
- In applications, follow the existing convention. `anyhow` or a similar crate is optional when already used; do not add a dependency just to wrap one error.
- Do not unwrap user input, IO, network, or parse results. `expect` is appropriate only when the invariant is local and its violation indicates a bug.
- Keep error messages useful and avoid exposing secrets or sensitive input.

Test expected error variants and context at the boundary. Run `cargo check` and focused tests.

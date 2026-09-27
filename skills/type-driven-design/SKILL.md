---
name: type-driven-design
type: atomic
description: Use when a Rust type can clarify a meaningful invariant, state transition, or boundary parse.
metadata:
  user-invocable: "true"
---

# Type-Driven Design

Introduce a type when it makes an important invalid state harder to represent or removes repeated checks. Keep ordinary values ordinary.

- Parse untrusted input at the boundary into a validated type when downstream code relies on the invariant.
- Use a newtype for identifiers or values that must not be mixed, or that enforce a real invariant; avoid wrappers with no distinct behavior or safety benefit.
- Use an enum when it makes mutually exclusive states explicit and removes invalid combinations callers otherwise handle.
- Use `Option` for absence and `Result` for failure. Use `TryFrom` or `FromStr` for fallible conversion.
- Choose typestate only when compile-time prevention materially improves a multi-step API; an enum is simpler for ordinary runtime state.
- Keep strings at configuration and I/O boundaries when that is the natural representation. Convert to an enum or newtype only when the program needs distinct behavior or validation.

State the invariant and compare the new API's cost with the checks it removes. Test valid input, rejected input, and changed call sites.

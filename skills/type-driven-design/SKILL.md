---
name: type-driven-design
type: atomic
tags: [atomic]
license: MIT
description: >-
  Trigger: Rust type design, newtype, enum, TryFrom, FromStr, typestate,
  boundary parsing. Use when a type clarifies a meaningful invariant or state.
metadata:
  version: 1.0.0
  user-invocable: "true"
---

# Type-Driven Design

## RULES

1. Introduce a type only when it makes an important invalid state harder to represent or removes repeated checks.
2. Parse external values into validated types at the boundary when downstream code relies on the invariant; use `TryFrom` or `FromStr` for fallible conversion.
3. Use a newtype only when values must not be mixed or the wrapper enforces a real invariant. Use an enum for mutually exclusive states.
4. Use `Option` for absence and `Result` for failure. Choose typestate only when compile-time prevention materially improves a multi-step API.
5. Keep ordinary values and configuration strings ordinary when no validation or distinct behavior is needed.

## Example

- ✅ Use `NonZeroU16` when zero is invalid for the domain value.
- ❌ Wrap every `String` in a newtype when callers need no distinct behavior or validation.

## Validation

In the target crate, test valid and rejected inputs and affected call sites; run `cargo check` and focused tests.

## Integration

Start with `rust-essentials`; pair with `ownership-borrowing` when a type changes an ownership contract.

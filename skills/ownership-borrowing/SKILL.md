---
name: ownership-borrowing
type: atomic
tags: [atomic]
license: MIT
description: >-
  Trigger: Rust ownership, borrowing, lifetime, clone, Arc, Rc, shared state.
  Use when a change affects who owns or mutates a value.
metadata:
  version: 1.0.0
  user-invocable: "true"
---

# Ownership and Borrowing

## RULES

1. Borrow with `&T`, `&str`, or slices when the callee only reads and the caller keeps ownership.
2. Take ownership when the callee stores, transforms, or transfers the value.
3. Clone when it simplifies ownership or is required; inspect callers before removing an existing clone.
4. Use `Arc` for shared ownership across threads and `Rc` within one thread. Add synchronization or interior mutability only for shared mutation.
5. Use `Box` for indirection, recursive types, or a deliberate layout/API requirement. Let the compiler infer lifetimes unless the public contract needs explicit ones.

## Example

- ✅ Accept `&str` when a function only reads text and does not retain it.
- ❌ Clone text into a temporary value only to read it once.

## Validation

Check callers before changing a public ownership signature. Run `cargo check` and focused tests in the target crate.

## Integration

Start with `rust-essentials`; pair with `type-driven-design` when ownership changes a type invariant.

---
name: ownership-borrowing
type: atomic
description: Use when changing Rust ownership, borrowing, lifetimes, cloning, or shared state.
metadata:
  user-invocable: "true"
---

# Ownership and Borrowing

Follow the smallest ownership contract that keeps the code clear.

- Borrow with `&T`, `&str`, or slices when the callee only reads data and the caller keeps ownership.
- Take ownership when the callee stores, transforms, or transfers the value.
- Clone when it simplifies ownership or enables the required lifetime; do not remove a clear clone without understanding why it exists.
- Use `Arc` for shared ownership across threads and `Rc` for single-threaded shared ownership. Add locks or interior mutability only when shared mutation is part of the design.
- Use `Box` for indirection, recursive types, or a deliberate layout/API requirement. Ordinary moves are usually cheap and do not need boxing.
- Let the compiler infer lifetimes until a public contract requires explicit ones.

Check callers before changing a public ownership signature. Run focused tests and `cargo check`.

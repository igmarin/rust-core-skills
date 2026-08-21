# Playbooks

Sequenced workflows with hard gates and HITL. They load atomics; they do not re-teach FCIS.

Quality commands: `docs/skill-authoring.md`.

## Written

| Playbook | Path | Gate |
|----------|------|------|
| `tdd` | `skills/playbooks/tdd/` | RED `cargo test <test_name> -- --exact` → user approves → green → quality commands |

## Not written

Do not load these. When added, `name` must match the directory. Review playbook directory is `code-review-playbook` (not `code-review` — that name is reserved for the atomic).

| Planned id | Intended path | Gate (when written) |
|------------|---------------|---------------------|
| `bug-fix` | `skills/playbooks/bug-fix/` | Repro test first |
| `quality` | `skills/playbooks/quality/` | quality commands; `cargo deny` if `deny.toml` exists |
| `code-review-playbook` | `skills/playbooks/code-review-playbook/` | Critical/Major/Minor; tests for new logic |
| `setup` | `skills/playbooks/setup/` | toolchain, MSRV, fmt/clippy, CI |
| `new-crate` | `skills/playbooks/new-crate/` | lib vs bin, workspace, public API, rustdoc |
| `unsafe-change` | `skills/playbooks/unsafe-change/` | `# Safety` + `// SAFETY:` + Miri before merge |

Until those exist, the router uses `rust-essentials` and `tdd`.

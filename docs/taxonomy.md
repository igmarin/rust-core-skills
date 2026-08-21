# Taxonomy

Domain folders. Place a skill by **what it teaches**.

```text
skills/
├── rust-core/         language spine (always first)
├── functional/        iterators, Result combinators, closures
├── async/             tokio, cancellation
├── concurrency/       rayon, threads, atomics
├── unsafe/            SAFETY, Miri
├── api/               public crate surface, serde, macros
├── testing/           cargo test, proptest
├── docs/              rustdoc
├── observability/     tracing
├── project/           load-context, cargo, alloc, perf
├── quality/           clippy, review rules, security
├── cli/               clap
├── playbooks/         HITL multi-step
└── orchestration/     rust-skill-router only
```

| Kind | `type` | Role |
|------|--------|------|
| Atomic | `atomic` | One domain: rules + one example pair + gates |
| Playbook | `playbook` | Phases, hard gates, HITL; loads atomics |
| Orchestrator | `orchestrator` | Routes; never implements |

A folder is only loadable when it contains `SKILL.md` and is a `directory.json` key. Empty planned folders are not skills.

Playbooks do not re-teach atomics. Atomics do not re-teach `docs/fcis-rust.md`.

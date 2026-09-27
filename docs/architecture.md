# Pack boundaries

This pack owns Rust language guidance for the `rust` profile. `agnostic-planning-skills` owns profile selection and routing; `rust-essentials` owns the required project preflight, API-version evidence, and verification baseline.

`directory.json` is the registry. The profile installer copies only registered skills into a generated profile directory. Keep required behavior in each `SKILL.md`; references are opt-in and must not be needed to complete a required step.

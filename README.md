# lean-stuff

`lean-stuff` is the Lean 4 side of the [RL-Lean](https://github.com/nelsmartin/RL-Lean) project. It provides the proof environment, custom tactics, and theorem curriculum that the reinforcement learning agent interacts with via PyPantograph.

## Contents

The `LeanStuff` library contains four main pieces:

1. **Oracle Tactic** (`LeanStuff/OracleTactic.lean`) — Defines the `so` tactic, which takes a JSON config describing categories of candidate tactics (no-arg closers, hypothesis-consuming tactics, fresh-variable tactics, function-congruence tactics) and emits the subset that successfully applies to the current goal state as a JSON `nextMoves` message. This is the action-enumeration primitive consumed by the RL policy.

2. **Induct Rename** (`LeanStuff/InductRename.lean`) — A custom `induct_rename h` tactic that performs induction on `h` and automatically renames any inaccessible (ghost) hypotheses in the resulting goals with fresh accessible names, so the policy can refer to them by name.

3. **Curriculum** (`LeanStuff/CurriculumTest.lean`) — A graded sequence of natural-number theorems (identities of zero, successor lemmas, injectivity, simple arithmetic) used as training targets, each stated with `sorry` so the agent must close them.

4. **Simple Theorems** (`LeanStuff/SimpleTheorems.lean`) — A small set of warm-up goals (`add_zero`, `zero_add`, `add_assoc`, etc.) for testing the environment loop end-to-end.

## Requirements

- Lean toolchain `leanprover/lean4:v4.27.0` (see `lean-toolchain`)
- [`elan`](https://github.com/leanprover/elan) to manage the toolchain
- [`lake`](https://github.com/leanprover/lean4/tree/master/src/lake) (bundled with Lean) to build

## Build

```bash
lake build
```

## Use from RL-Lean

The RL-Lean training loop spawns a Pantograph server pointed at this project, imports `LeanStuff.OracleTactic`, and at each proof step calls the `so` tactic with a JSON action menu. The tactics returned in `nextMoves` form the candidate action set the policy network scores. Closing a `sorry` from `CurriculumTest.lean` yields the `+1` terminal reward.

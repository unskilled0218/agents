---
name: plan-review
description: Use ONLY when the user asks to review the latest task plan in the agents workflow. Reviews 1-plan.md, records findings, and updates the plan without implementing code.
metadata:
  opencode/slash: "true"
---

# Plan Review

1. Read `~/.config/opencode/skills/_shared/my-agents.md`.
2. Do not modify implementation code.
3. Locate the latest task under `<project>/tasks/` and read `1-plan.md`.
4. Load and apply the `brooks-review` skill to the plan.
5. Write the review to `2-plan-review.md` in the same task directory.
6. Update `1-plan.md` to address valid review findings.
7. Commit the planning artifacts when the user has requested commits or the repository workflow explicitly requires one.

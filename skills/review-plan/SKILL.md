---
name: review-plan
description: Use ONLY when the user asks to review the latest task plan in the agents workflow. Reviews 3-plan.md, records findings, and updates the plan without implementing code.
metadata:
  opencode/slash: "true"
---

# Plan Review

- [Plan Review](#plan-review)

1. Run `@learn` first
2. Do not modify implementation code.
3. Locate the latest task under `<project>/tasks/` and read `3-plan.md`, `1-goal.md`, and `2-design.md` if present. Check that the plan follows the goal and approved design.
4. Load and apply the `brooks-health` skill to the plan.
5. Write the review to `4-plan-review.md` in the same task directory.
6. Commit

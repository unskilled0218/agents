---
name: review-branch
description: Use ONLY when the user asks to review all changes on the current branch using the agents workflow. Applies brooks-health and records the code review for the latest task.
metadata:
  opencode/slash: "true"
---

# Review

- [Review](#review)

1. Run `@learn` first
2. Identify all changes on the current branch relative to its base branch.
3. Load and apply the `brooks-health` skill to those changes.
4. Write the findings to `6-code-review.md` in the latest task directory. Check changes against `3-plan.md` and the approved `2-design.md` if present.
5. Do not implement fixes in this stage.
6. Commit

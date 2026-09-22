---
name: review
description: Use ONLY when the user asks to review all changes on the current branch using the agents workflow. Applies brooks-review and records the code review for the latest task.
metadata:
  opencode/slash: "true"
---

# Review

1. Read `../AGENTS.md`.
2. Identify all changes on the current branch relative to its base branch.
3. Load and apply the `brooks-review` skill to those changes.
4. Write the findings to `4-code-review.md` in the latest task directory.
5. Do not implement fixes in this stage.
6. Commit the review artifact when the repository workflow requires it.

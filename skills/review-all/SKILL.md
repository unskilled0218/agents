---
name: review-all
description: Use ONLY when the user explicitly asks for a whole-project review through the agents workflow. Applies brooks-review across the requested project and records the findings.
metadata:
  opencode/slash: "true"
---

# Review All

1. Read `~/.config/opencode/skills/_shared/my-agents.md`.
2. Resolve the project from the user's request.
3. Load and apply the `brooks-review` skill to the whole project.
4. Record the findings in the task artifact requested by the user, or report them directly if no task is active.
5. Do not implement fixes unless the user explicitly asks.
6. Create the next task directory under `<project>/tasks/<num>-code-review` and write the review to `code-review.md`.
7. Commit

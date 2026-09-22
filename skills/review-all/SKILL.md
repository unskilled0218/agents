---
name: review-all
description: Use ONLY when the user explicitly asks for a whole-project review through the agents workflow. Applies brooks-review across the requested project and records the findings.
metadata:
  opencode/slash: "true"
---

# Review All

1. Read `../AGENTS.md`.
2. Resolve the project from the user's request.
3. Load and apply the `brooks-review` skill to the whole project.
4. Record the findings in the task artifact requested by the user, or report them directly if no task is active.
5. Do not implement fixes unless the user explicitly asks.
6. Commit a generated review artifact when the repository workflow requires it.

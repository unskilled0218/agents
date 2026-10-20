---
name: implement
description: Use ONLY when the user asks to implement the latest planned task using the agents workflow. Creates the task branch, implements 2-plan.md, records results, updates the version, and commits.
metadata:
  opencode/slash: "true"
---

# Implement

1. Read `~/.config/opencode/skills/_shared/my-agents.md`.
2. Locate the latest task under `<project>/tasks/` and read its `2-plan.md`.
3. Create a new branch whose name exactly matches the task directory. Do not reuse an existing branch.
4. Implement the complete plan and run the relevant verification.
5. Write `4-implemented.md` in the task directory with the changes and verification results.
6. Update the project version according to the project's existing release convention.
7. Always update README.md and docs after implement code. relevant only
8. Commit the implementation when the repository workflow requires it.

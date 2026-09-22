---
name: implement
description: Use ONLY when the user asks to implement the latest planned task using the agents workflow. Creates the task branch, implements 1-plan.md, records results, updates the version, and commits.
metadata:
  opencode/slash: "true"
---

# Implement

1. Read `../AGENTS.md`.
2. Locate the latest task under `<project>/tasks/` and read its `1-plan.md`.
3. Create a new branch whose name exactly matches the task directory. Do not reuse an existing branch.
4. Implement the complete plan and run the relevant verification.
5. Write `3-implemented.md` in the task directory with the changes and verification results.
6. Update the project version according to the project's existing release convention.
7. Commit the implementation when the repository workflow requires it.

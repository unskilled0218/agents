---
name: implement
description: Use ONLY when the user asks to implement the latest planned task using the agents workflow. Creates the task branch, implements 3-plan.md, records results, updates the version, and commits.
metadata:
  opencode/slash: "true"
---

# Implement

- [Implement](#implement)

1. Run `@learn` first
2. Locate the latest task under `<project>/tasks/` and read its `3-plan.md` and approved `2-design.md` if present, including linked previews. Ask for clarification if the plan conflicts with the design or design approval is pending.
3. Create a new branch whose name exactly matches the task directory. Do not reuse an existing branch.
4. Implement the complete plan and run the relevant verification.
5. Write `5-implemented.md` in the task directory with the changes and verification results.
6. Update the project version according to the project's existing release convention.
7. Always update README.md and docs after implement code. relevant only
8. Commit the implementation when the repository workflow requires it.

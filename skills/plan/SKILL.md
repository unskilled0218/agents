---
name: plan
description: Use ONLY when the user explicitly asks to run the task planning workflow from the agents repository. Produces a task plan without modifying implementation code.
metadata:
  opencode/slash: "true"
---

# Plan

1. Read `~/.config/opencode/skills/_shared/my-agents.md` and follow its project and task conventions.
2. Do not modify implementation code.
3. Read the user's current request from `~/workdir/command.md`.
4. Inspect the target project enough to write an actionable implementation plan.
5. Create the next task directory under `<project>/tasks/` and write the plan to `1-plan.md`.
6. Commit the planning artifacts when the user has requested commits or the repository workflow explicitly requires one.

Do not reuse a previous plan unless the user explicitly asks you to.

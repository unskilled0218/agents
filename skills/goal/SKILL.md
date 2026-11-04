---
name: goal
description: Use ONLY when the user explicitly asks to run the task planning workflow from the agents repository. Produces a task plan without modifying implementation code.
metadata:
  opencode/slash: "true"
---

# Plan

1. Read `~/.config/opencode/skills/_shared/my-agents.md` and follow its project and task conventions.
2. Do not modify implementation code.
3. Read the user's current request from `~/workdir/command.md`.
4. Inspect the target project enough to write an goal.
5. Create the next task directory under `<project>/tasks/` and write the plan to `1-goal.md`.
6. Commit

- Do not reuse a previous goal unless the user explicitly asks you to.
- Create goal simple
  - Creating goal is to check you understand what I want
  - Do not create other section.

# Example

```markdown
# Goal

## Command

[copy paste user's request]

## Goal

[A concise statement of the intended outcome or response.]

## Suggestions

[Any suggestions are welcome]
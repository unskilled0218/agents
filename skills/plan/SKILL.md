---
name: plan
description: Use ONLY when the user explicitly asks to run the task planning workflow from the agents repository. Produces a task plan without modifying implementation code.
metadata:
  opencode/slash: "true"
---

# Plan

- [Plan](#plan)
- [Example](#example)

1. Run `@learn` first
2. Do not modify implementation code.
3. Read `1-goal.md` and `2-design.md` if present, including linked previews. If design exists but is not approved or has blocking questions, ask for clarification before planning. Inspect the target project enough to write an actionable implementation plan.
4. Write the plan to `3-plan.md` same dir as `1-goal.md`. Describe how to build the goal and approved design; do not silently change design decisions.
5. Commit

Do not reuse a previous plan unless the user explicitly asks you to.

# Example

```markdown
# plan

## scope

## Implementation Plan

1. ~
2. ~
3. ~

```

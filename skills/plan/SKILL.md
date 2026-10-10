---
name: plan
description: Use ONLY when the user explicitly asks to run the task planning workflow from the agents repository. Produces a task plan without modifying implementation code.
metadata:
  opencode/slash: "true"
---

# Plan

1. Read `~/.config/opencode/skills/_shared/my-agents.md` and follow its project and task conventions.
2. Do not modify implementation code.
3. Read `1-goal.md` and inspect the target project enough to write an actionable implementation plan.
4. Create the next task directory under `<project>/tasks/` and write the plan to `2-plan.md`.
5. Commit

Do not reuse a previous plan unless the user explicitly asks you to.

# Example

```markdown
# plan

## scope

## Implementation Plan

### 1. ~

### 2. ~

### 3. ~

## Acceptance Criteria

## Risks And Decisions
```
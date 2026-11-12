---
name: yolo
description: yolo
metadata:
  opencode/slash: "true"
---

- Check latest task first
  - If the task has `1-goal.md` and no later numbered workflow files other than optional `2-design.md`, skip @goal and use the task. Design previews may also exist.
    - If `2-design.md` exists but is not approved or has blocking questions, stop and ask for clarification before @plan.
  - if other files exist, create new task

1. @goal
2. @plan
3. @review-plan
4. @update-plan
5. @implement

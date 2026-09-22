---
name: yolo
description: Use ONLY when the user explicitly asks to run the complete agents workflow end to end. Plans, reviews the plan, implements, reviews code, fixes findings, and updates documentation.
metadata:
  opencode/slash: "true"
---

# Complete Workflow

Run these installed skills in order and finish each stage before starting the next:

1. `plan`
2. `plan-review`
3. `implement`
4. `review`

Afterward, update the target project's `README.md` if the implementation changed documented behavior, then commit that documentation change when the repository workflow requires it. Stop and report the blocker if any stage fails verification.

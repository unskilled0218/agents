---
name: design
description: Use ONLY when the user explicitly asks to design a UI before planning implementation. Creates editable mockups and a design handoff for an existing task without modifying application code.
metadata:
  opencode/slash: "true"
---

# Design

- [Rules](#rules)
- [Workflow](#workflow)
- [Outputs](#outputs)
- [Approval and handoff](#approval-and-handoff)

## Rules

- Read `~/.config/opencode/skills/_shared/my-agents.md` and follow its project and task conventions.
- This is an optional step between `@goal` and `@plan` for UI tasks.
- Do not create a task or branch. Do not modify application code or numbered workflow files other than `2-design.md`.
- Use an existing task directory. Ask which task to use if the target is unclear. If no task exists, ask the user to run `@goal` first.
- Only modify the task's design document, exported previews, and the explicitly selected Penpot design area. Preserve unrelated designs.
- Do not install tools or change configuration. Report missing tools and ask how to proceed.
- Never treat a generated design as approved without explicit user approval.

## Workflow

1. Read the task's `1-goal.md`, any existing design files, and relevant project UI conventions. Inspect existing screens, components, tokens, and assets before proposing new patterns.
2. Confirm target users, primary actions, required screens, desktop/mobile needs, and any brand or visual references. Ask only about missing details that affect the design. Record assumptions.
3. Propose one visual direction with its layout, typography, colors, and navigation. Reuse the project's design system unless the user requests a change. Get agreement before detailed mockups.
4. Use Penpot to create editable mockups under the project `<project-name>` in a design file named `task-<num>`, using the existing project's name and task number. Reuse the matching project and task file if they exist; otherwise create them. Preserve unrelated designs. Read the Penpot tool overview before using its API. If Penpot is unavailable, ask whether a written wireframe is acceptable; do not silently substitute one.
5. Design the primary user flow and agreed viewport sizes. Include applicable loading, empty, error, success, validation, and disabled states. Explain any omitted states.
6. Specify reusable components, color tokens, typography, spacing, responsive behavior, and interaction rules. Cover keyboard navigation, focus states, labels, and WCAG AA contrast. Distinguish intended accessibility from checks actually performed.
7. Export previews and write `2-design.md`. Include editable board links or identifiers, diagrams where useful, and a concise summary of design decisions and unresolved questions.
8. Show the design and ask for approval or revisions. Iterate within the agreed scope. Keep the status `Draft` until the user explicitly approves the current version.
9. commit

## Outputs

Keep all local outputs inside the existing task directory:

- `2-design.md`: design brief, decisions, user flow, screen inventory, states, component tokens, responsive rules, accessibility requirements, Penpot project and `task-<num>` file links or identifiers, preview paths, open questions, and approval status.
- `design/`: exported screen previews with descriptive filenames.

Include a table of contents for every header in `2-design.md`. Keep the document concise. Describe how the feature should work; leave implementation steps to `3-plan.md`. Record approval against specific boards or preview versions. Mark the design `Draft` again after subsequent design changes.

## Approval and handoff

- Stop after presenting the design if approval is pending. Do not run `@plan` or `@implement` automatically.
- Once approved, record the user's approval and the approved scope in `2-design.md`.
- Tell the user to run `@plan` and read this task's approved `2-design.md` and linked previews as planning inputs.
- If the goal changes or important design questions remain unresolved, request clarification before marking the design ready for planning.

- [About docs](#about-docs)
- [tasks](#tasks)
  - [structure](#structure)

- You are already inside docker contaier. Don't use root things
  - Give me command what I have to install, I'll install
- Don't touch todo.md
- Focus on user's order. Don't think about other things
- Make no mistakes
- Don't implement anything until user call skill: @implement
- When user ask something, answer the question. Don't implement anything
- If you need user's confirmation, curl UnifiedPush
  - curl -d "<project>: <task>-<request>" https://ntfy.lan/dev

## About docs

- Always create table of contents for all headers when create markdown file
- Write files in short, simple and easy to understand

- Don't break line
- Don't use emoji
- tab size = 2

- Keep project's README.md simple. Don't create one `guide.md` for all section. Create dedicated file for each section
  - ex
    - docs/<something-1>.md
    - docs/<something-2>.md

## tasks

- write short, clear and easy to understand
- after each task(skill) call `curl -d "<project>: <task>-<skill>" https://ntfy.lan/dev`
  - ex) curl -d "todo: task-021 - plan" https://ntfy.lan/dev
  - Don't notify for `@learn` and `brooks-*`

### structure

- if <current-dir>/tasks doesn't exist, mkdir
- When set <num>
  - Read <current-dir>/tasks and <current-dir>/tasks/_archives first, then set <num>

- <current-dir>/
  - other project files...
  - tasks/
    - <num>-<task>/
      - 1-goal.md
      - 2-design.md
      - 3-plan.md
      - 4-plan-review.md
      - 5-implemented.md
      - 6-code-review.md

- `2-design.md` is optional for tasks without UI or workflow changes. Keep later filenames unchanged when skipping design.
- Design describes how the feature should work: user flow, screens, states, design links, diagrams, and decisions. Planning describes how to build it.
- Use `@design` for UI mockups and their handoff in `2-design.md`.

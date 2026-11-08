- You are already inside docker contaier. Don't use root things
  - Give me command what I have to install, I'll install
- Don't touch todo.md
- Focus on user's order. Don't think about other things
- Make no mistakes
- Don't implement anything until user call skill: @implement
- When user ask something, answer the question. Don't implement anything
- If you need user confirmation while doing notify user: curl -d "<project>: <task>-<your request>" https://ntfy.lan/dev

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
      - 2-plan.md
      - 3-plan-review.md
      - 4-implemented.md
      - 5-code-review.md

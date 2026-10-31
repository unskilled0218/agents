- You are already inside docker contaier. Don't use root things
  - Give me command what I have to install, I'll install
- Don't touch todo.md
- Focus on user's order. Don't think about other things
- Make no mistakes
- Don't implement anything until user call skill: @implement
- When user ask something, answer the question. Don't implement anything

## About docs

- Always create table of contents for all headers when create markdown file
- Keep short and simple and easy to understand

- Don't break line
- Don't use emoji
- tab size = 2

- Keep project's README.md simple. Don't create one `guide.md` for all section. Create dedicated file for each section
  - ex
    - docs/<something-1>.md
    - docs/<something-2>.md

## Response style

Based on [caveman](~/.config/opencode/skills/_shared/caveman.md). Use the shortest clear answer by default.

- Answer first. Include reasons or next steps only when needed.
- Keep every necessary technical fact. Clarity wins over compression.
- No greetings, filler, pleasantries, recaps, or closing offers.
- Use short, plain words, active voice, and one idea per sentence. Aim for 20 words or fewer per sentence.
- Omit articles only when meaning stays clear. Never omit negations, conditions, exceptions, numbers, or units.
- Preserve code, commands, paths, API names, and quoted errors exactly. Do not shorten existing comments unless asked.
- Show only changed code with 1–2 context lines. Show whole files only when requested, new, or mostly changed.
- Avoid decorative formatting, tables, invented abbreviations, and performed caveman grammar.
- Reply in the user's language. Keep technical terms and errors verbatim.
- No narration between routine tool calls. Give brief updates only for meaningful progress, clarification, or blockers.
- Use full sentences for questions, warnings, irreversible-action confirmations, or ambiguous step order.
- Write persisted content, including code, comments, documentation, and commit messages, in normal prose.
- Follow explicit requests for more detail or normal style. Otherwise, keep this style throughout the session.
- Before sending, remove unnecessary opening and closing sentences. Check that brevity has not changed meaning.

## tasks

- after each task(skill) call `curl -d "<project>: <task>-<skill> ended" https://ntfy.lan/general`
  - Don't notify for `brooks-*`

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

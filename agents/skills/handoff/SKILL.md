---
name: handoff
description: Write a handoff document so that a fresh agent can continue the work.
argument-hint: "What will the next session be used for?"
disable-model-invocation: true
---

Write a handoff document for a fresh agent that continues this work. The agent does not have this conversation. Tell it what to do next. Do not tell the story of the session.

Save the document in `~/daybook/<repository-name>/`. If the work already has a topic directory there, use that directory. Use the name of the main repository, not the name of a worktree. Outside a git repository, use `~/daybook/<topic>/`, where `<topic>` is a short kebab-case name for the subject of the work, for example `sovereign-ai`. If a directory for that subject already exists, use it. Never save to `~/daybook/` itself. Name the file `handoff-YYYY-MM-DD-<topic>.md`. Do not commit it, a timer commits `~/daybook`.

Start the document with a `# ` heading that gives the next task as a command, for example `# Continue the GPU sharing tests on the next GPU node`. The knowledge base board uses this heading as the title of the card.

If an earlier handoff for the same work exists, add `Replaced by <new path>` at its top.

Include these sections:

1. Goal: what "done" means, and the command or test that shows it.
2. Rules: the limits that the user gave in this session, for example "do not push" or "use only node X". Approvals do not carry over to a new session. Name the actions that need a new approval.
3. Open questions: decisions that only the user can make.
4. State: for each worktree, give the path, branch, last commit and push status. Include uncommitted changes, open PRs and issues, and the remote hosts in use. Include running processes, and resources that expire or cost money, for example Kaytoo VMs. Check the state with `git status`, `git log` and `gh` before you write it. Do not write it from memory.
5. Next steps: make the first step concrete. The agent must be able to start it without questions to the user.
6. Decisions and dead ends: what was decided and why, and what failed. The next agent must not try those again.
7. Read first: files and URLs, in the order to read them.
8. Suggested skills: the skills to call with the Skill tool.

Use absolute paths, commit hashes and full URLs.

Do not duplicate content already captured in other artifacts (specs, plans, ADRs, issues, commits, diffs). Reference them by path or URL instead.

Redact any sensitive information, such as API keys, passwords, or personally identifiable information.

If the user passed arguments, treat them as a description of what the next session will focus on and tailor the doc accordingly.

At the end, give the user the path and this prompt for the new session: `Read <path> and continue the work.`

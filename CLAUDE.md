@AGENTS.md

# Claude Code notes

- Skills are read from `.claude/skills/`, a generated mirror of `.agents/skills/`. Edit the source, then run `scripts/sync-skills.sh`.
- Start a project by asking: "Use the website-sdd skill to start the project from project/brief.md".
- Everything else (rules, gates, language, integrity) is defined in `AGENTS.md`.

---
name: website-verification
description: Verifies a built website (HTML, CSS, JS, responsiveness, navigation, forms, accessibility WCAG 2.2 AA, technical SEO, performance, security, acceptance criteria) and produces the final report project/RELATORIO.md. Use in stages 8 and 9 of the Website SDD flow, after implementation tasks are done (verificação, testes, relatório final).
---

# Website verification and report

Rules: `AGENTS.md`. Checklists: `references/frontend-quality.md`, `references/seo.md`, `references/security-lgpd.md`. Inputs: `site/`, `project/spec.md`, `project/tasks.md`.

## Mode: verify (stage 8)
1. Serve `site/` locally with a static server (for example `python3 -m http.server` from `site/`).
2. Run the checks proportional to the project: HTML validity and semantics, CSS and JS issues, responsiveness (320 to 1440 px), navigation and links, forms and interactions, accessibility (keyboard walkthrough, contrast, labels, alt, reduced motion), technical SEO, performance, security and privacy, then every acceptance criterion `AC-n`.
3. Use available tools (validators, Lighthouse, axe) only when they are present. Optional dev tools are not site dependencies.
4. Record each check as PASSED, FAILED or NOT RUN, with evidence or the reason. A check that was not executed is NOT RUN, never PASSED.
5. Search `site/` for remaining `[PREENCHER` placeholders and report them.
6. Failures: describe, propose a fix and create a task proposal. Do not fix without task authorization (`workflows/sdd-workflow.md`).

## Mode: report (stage 9) → `project/RELATORIO.md` from `templates/report-template.md`, in pt-BR
1. Fill all sections from `tasks.md`, `plan.md`, `STATE.md` and the check results.
2. Metrics only from real measurements, with tool and date. Token usage per stage only if the environment exposes it; otherwise "não disponível".
3. List known problems, pending items, open placeholders and recommendations.
4. Update `project/STATE.md` and summarize in pt-BR.

## Rules
- Never claim a test was done if it was not.
- Never invent numbers or results.

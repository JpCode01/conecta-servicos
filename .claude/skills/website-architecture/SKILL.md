---
name: website-architecture
description: Defines the technical architecture and implementation plan for a website (project/plan.md) and breaks it into small traceable tasks (project/tasks.md). Use in stages 5 and 6 of the Website SDD flow, after Gate 2 and before implementation (arquitetura, estrutura de arquivos, plano, tarefas).
---

# Website architecture and tasks

Rules: `AGENTS.md`. Quality baselines: `references/frontend-quality.md`, `references/seo.md`, `references/security-lgpd.md`. Inputs: approved `spec.md` and `design.md`. English output.

## Mode: plan (stage 5) → `project/plan.md` from `templates/plan-template.md`
1. Stack: default HTML5, CSS3, vanilla JS. A deviation needs the full justification listed in `AGENTS.md`.
2. Directory structure and file responsibilities. Default shape, adapt to the spec:
   ```
   site/
   ├── index.html            # plus one folder or file per page from the sitemap
   ├── css/                  # tokens.css, base.css, components.css, page styles
   ├── js/                   # main.js and small focused modules
   ├── assets/               # img/, fonts/
   ├── robots.txt
   └── sitemap.xml
   ```
3. CSS: tokens from `design.md` as custom properties, mobile-first, flat selectors, one naming convention.
4. JavaScript: progressive enhancement, small ES modules only when needed, no globals.
5. Components: reuse only when a pattern repeats; avoid premature abstraction.
6. Dependencies: none by default; each needs justification, pinned version and privacy impact.
7. Images and fonts, SEO, accessibility, forms and data, security, testing: one concrete decision each, tied to FR, NFR and AC ids.
8. Fill the traceability table. List risks and open questions.
9. Set G3 to `awaiting` in `project/STATE.md`, summarize, ask for explicit approval of G3, stop. G3 does not authorize implementation.

## Mode: tasks (stage 6) → `project/tasks.md` from `templates/tasks-template.md`
1. Run only after G3 is approved.
2. Tasks are small (one reviewable change), ordered, with ids T-01, T-02, ...
3. Each task has: objective, description, files, dependencies, acceptance criteria, validation, status `pending`.
4. Typical order: structure and tokens, base styles, header and footer, sections by page, interactions, SEO and accessibility pass, assets optimization.
5. Every AC from `spec.md` must be covered by some task's validation.
6. Update `project/STATE.md`; ask the user to review the order. Do not start implementing.

## Rules
- Simplest architecture that meets the requirements.
- No technology, library or file without a requirement behind it.

---
name: website-specification
description: Writes the website specification (project/spec.md) with objectives, audience, value proposition, functional and non-functional requirements, sitemap, pages, responsiveness, accessibility, SEO, acceptance criteria, constraints and assumptions. Use in stage 3 of the Website SDD flow, before Gate 1 (especificação, requisitos, critérios de aceite).
---

# Website specification

Rules: `AGENTS.md`. Scope check: `references/scope-limits.md`. Site types: `references/site-types.md`. Quality baselines: `references/frontend-quality.md`, `references/seo.md`, `references/security-lgpd.md`. Output: `project/spec.md` from `templates/spec-template.md`, in pt-BR.

## Procedure
1. Read `project/brief.md` and `project/discovery.md`.
2. Fill every section of the template. Number requirements and criteria: FR-n, NFR-n, AC-n.
3. Define pages and sections in order, with content needed per section and the primary call to action.
4. Every acceptance criterion must be testable and say how to verify it; link it to requirements.
5. Check scope against `references/scope-limits.md`. Anything beyond it goes to "Itens fora de escopo" with implications and options.
6. Forms and data: state what is collected, why and where it goes (LGPD).
7. Missing business data: `[PREENCHER: ...]` in the content table; add open questions and assumptions.
8. Set G1 to `awaiting` in `project/STATE.md`, summarize the spec in pt-BR (pages, main features, open points), ask for explicit approval of G1, stop.

## Rules
- Specify what and why, not how. Technology and file structure belong to `plan.md`.
- Do not expand scope. Do not invent features, data or testimonials.
- Rejection or change request: revise `spec.md`, ask again.

## Done when
All sections filled, criteria testable, assumptions listed, G1 awaiting.

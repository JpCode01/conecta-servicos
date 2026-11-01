---
name: website-sdd
description: Orchestrates the Spec-Driven Development flow for institutional and commercial websites (landing pages, company, restaurant, salon, shop, service sites). Use when the user starts, continues or resumes a website project, mentions briefing, spec, gate, approval or SDD, or asks for a new site (novo site, briefing, aprovo). Controls stages, approval gates and task authorization; prevents premature implementation.
---

# Website SDD orchestrator

Rules: `AGENTS.md`. Stages, gate protocol, task authorization: `workflows/sdd-workflow.md`. Talk to the user in pt-BR.

## Start or resume
1. Read `project/STATE.md`. If missing, create `project/` and copy `templates/state-template.md` to `project/STATE.md`.
2. If `project/brief.md` is missing, ask the user to fill `templates/brief-template.md` (only name, summary and colors are required), or collect those three in chat and write the file. Accept incomplete briefs.
3. Tell the user the current stage, the next output and the next gate.

## Run the stages
| Stage | Action |
|---|---|
| 1 Briefing | Record the brief. Ask at most 5 objective questions, only for essential gaps. |
| 2 Discovery | Use skill `website-discovery`. |
| 3 Specification | Use skill `website-specification`, then request G1. |
| 4 Design | Confirm `frontend-design` is available (stop and tell the user if not). Use it to produce `project/design.md` from `templates/design-template.md`, grounded in `spec.md` and `discovery.md`. Request G2. |
| 5 Plan | Use skill `website-architecture` (plan mode), then request G3. |
| 6 Tasks | Use skill `website-architecture` (tasks mode). Ask the user to review the order. |
| 7 Implementation | Task loop below. |
| 8 Verification | Use skill `website-verification` when tasks are done or the user asks. |
| 9 Report | Use skill `website-verification` (report mode). |

## Gates
Follow the gate protocol in `workflows/sdd-workflow.md`. After producing G1, G2 or G3 documents: set `awaiting` in `STATE.md`, summarize, ask for explicit approval, stop. Approve only on explicit wording that names the gate or document; otherwise ask "Confirma a aprovação do G1?". Never advance with an open earlier gate.

## Task loop (stage 7)
1. Choose the next task with all dependencies done.
2. Inspect the relevant files. State planned changes and files. Ask "Autoriza a T-xx?". Stop.
3. After explicit authorization: implement (UI work through `frontend-design`, following `design.md`), run the task's validation, update `tasks.md` and `STATE.md`, report results and problems. Stop.
4. Never chain tasks, never edit outside the authorized files, never mark a validation as run when it was not.

## Changes
Scope change: update affected documents, set affected gates to `re-approval needed`, ask again. Requirements beyond scope: explain using `references/scope-limits.md`, wait for the decision, log it.

## Guardrails
- No `site/` code before G3 and an authorized task.
- Keep `STATE.md` current after every stage, gate and task. It is the resume point.
- Missing business data becomes `[PREENCHER: ...]`, never an invention.
- Read only what the current stage needs.

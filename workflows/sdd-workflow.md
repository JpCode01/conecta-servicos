# SDD Workflow

Rules: `AGENTS.md`. Orchestrator: `.agents/skills/website-sdd/SKILL.md`. State: `project/STATE.md`.

## Stages

| # | Stage | Skill | Input | Output | Done when | Gate |
|---|---|---|---|---|---|---|
| 1 | Briefing | `website-sdd` | User input | `project/brief.md` | Name, summary and colors (if any) recorded; essential gaps asked | — |
| 2 | Discovery | `website-discovery` | `brief.md` | `project/discovery.md` | Segment, audience, references, patterns, differentiators and sources documented | — |
| 3 | Specification | `website-specification` | `brief.md`, `discovery.md` | `project/spec.md` | All spec sections filled; acceptance criteria testable; assumptions listed | **G1** |
| 4 | Design | `frontend-design` + `website-sdd` | `spec.md` | `project/design.md` | Direction, tokens, components, states, responsive behavior defined and reviewed against the brief | **G2** |
| 5 | Architecture and Plan | `website-architecture` | `spec.md`, `design.md` | `project/plan.md` | Stack, structure, strategies and risks defined; deviations justified | **G3** |
| 6 | Task breakdown | `website-architecture` | `plan.md` | `project/tasks.md` | Small, ordered tasks with all required fields | — |
| 7 | Implementation | `frontend-design` + `website-sdd` | `tasks.md` | Code in `site/` | Each authorized task meets its acceptance criteria | Per task |
| 8 | Verification | `website-verification` | `site/`, `spec.md` | Check results | Every check marked PASSED, FAILED or NOT RUN | — |
| 9 | Final report | `website-verification` | Check results, `STATE.md` | `project/RELATORIO.md` | Report complete, no invented metrics | — |

## Gate protocol
1. Produce the document, set the gate to `awaiting` in `STATE.md`, summarize in pt-BR, ask for explicit approval, stop.
2. Classify the reply: approval (explicit, names gate or document), change request or rejection, or question. Unclear reply: ask for confirmation.
3. Approval: set the gate to `approved`, store date and a short quote of the user's words, advance.
4. Rejection or change request: set the gate to `rejected`, return to the producing stage, revise, ask again.
5. Gate order is fixed: G1 → G2 → G3. A later stage never starts with an earlier gate open.

## Task authorization (stage 7)
1. Pick the next task whose dependencies are done.
2. Inspect the relevant files, then state the planned changes and files.
3. Ask: "Autoriza a T-xx?" and stop.
4. Only after explicit authorization: implement, validate, update `tasks.md` and `STATE.md`, report, stop.
5. G3 approval never authorizes tasks. Authorization for one task never covers another.

## Changes after approval
- Scope change: update the affected documents, set affected gates to `re-approval needed`, ask again.
- Stack change: needs the justification listed in `AGENTS.md` and G3 approval.
- Out-of-scope requirement: explain implications (`references/scope-limits.md`) and wait for the user's decision.

## Resuming
Read `project/STATE.md`, then only the documents of the current stage. Documents are the project memory; do not rely on chat history.

## Status values
Gate: `pending`, `awaiting`, `approved`, `rejected`, `re-approval needed`. Task: `pending`, `authorized`, `in-progress`, `done`, `blocked`. Check: `PASSED`, `FAILED`, `NOT RUN`.

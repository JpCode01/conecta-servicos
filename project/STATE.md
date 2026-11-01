# Project state

<!-- Maintained by the `website-sdd` skill. Keep it short. -->

- **Project:** Conecta Serviços
- **Current stage:** 6 Tasks
- **Next action:** Review `RELATORIO.md` and approve pending content/SEO before publication

## Gates
| Gate | Document | Status | Date | User words (short quote) |
|---|---|---|---|---|
| G1 | spec.md | approved | 01/11/2026 | "Aprovo a especificação (Gate 1). Pode seguir para o design." |
| G2 | design.md | approved | 01/11/2026 | "Aprovo o design (Gate 2). Pode seguir para arquitetura e plano." |
| G3 | plan.md | approved | 01/11/2026 | "Aprovo a arquitetura e o plano (Gate 3). Pode gerar o tasks.md." |

## Tasks
- **Current task:** none
- **Done:** 9 / 9

## Decisions and scope changes
<!-- Date — decision — affected documents. -->
- **01/11/2026** — Discovery concluído; referências de mercado tratadas como comparáveis, sem confirmação de concorrência direta — `discovery.md`.
- **01/11/2026** — CTA principal definido como WhatsApp; primeira versão limitada a sites, produção de conteúdo e identidade visual; sem portfólio/cases; atuação online sem abrangência geográfica declarada; contatos autorizados — `discovery.md`.
- **01/11/2026** — Especificação criada para página institucional de uma página, sem formulário ou coleta de dados; aguardando aprovação do G1 — `spec.md`.
- **01/11/2026** — Gate 1 aprovado explicitamente; avanço para design bloqueado porque a skill `frontend-design` não está disponível.
- **01/11/2026** — Skill `frontend-design` localizada em `.agents/skills/frontend-design/SKILL.md`; design criado e Gate 2 aguardando aprovação.
- **01/11/2026** — Gate 2 aprovado explicitamente; arquitetura e plano criados com stack padrão estático e Gate 3 aguardando aprovação — `plan.md`.
- **01/11/2026** — Gate 3 aprovado explicitamente; tasks criadas em ordem de dependência. Nenhuma tarefa está autorizada — `tasks.md`.
- **01/11/2026** — T-01 concluída: estrutura semântica da página criada e validação estrutural executada.
- **01/11/2026** — T-02 concluída: tokens de design e estilos base responsivos criados e validação executada.
- **01/11/2026** — T-03 concluída: header, navegação, controles de contato e footer estilizados; validação de links, foco, touch targets e overflow responsivo executada.
- **01/11/2026** — T-04 concluída: composição visual das seções, planos do hero, serviços, processo, FAQ, contato e footer aplicada; validação nos cinco breakpoints executada.
- **01/11/2026** — T-05 concluída: menu mobile progressivo e FAQ com comportamento nativo aprimorado, ARIA sincronizado, Escape, foco e suporte a teclado implementados e validados.
- **01/11/2026** — T-06 concluída: revisão de acessibilidade, SEO e segurança executada; placeholders de SEO, domínio, imagem social e política foram preservados por falta de aprovação.
- **01/11/2026** — T-07 concluída: responsividade e overflow aprovados nos cinco breakpoints; LCP local observado em 76 ms, CLS 0, INP p75 e Lighthouse não executados; `check-repo.sh` reteve apenas os e-mails autorizados como erros de varredura.
- **01/11/2026** — Verificação formal concluída e relatório criado em `RELATORIO.md`; publicação permanece condicionada à aprovação dos placeholders e dos metadados SEO.
- **01/11/2026** — T-08 concluída após autorização: ícone autorizado copiado para `site/assets/`, aplicado ao logo do cabeçalho e registrado como favicon — `index.html`, `components.css`, `tasks.md`.
- **01/11/2026** — T-09 concluída após autorização: `icone-cabecalho.png` aplicado somente ao logo do cabeçalho; favicon `icone-site.png` e demais elementos foram preservados — `index.html`, `tasks.md`.

## Open questions
- Definir processo de atendimento, nichos prioritários, logotipo e limites das entregas de sites, conteúdo e identidade visual.
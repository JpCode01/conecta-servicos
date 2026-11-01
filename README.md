# Website SDD

Sistema reutilizável de **Spec-Driven Development (SDD)** para criar sites institucionais e comerciais com **Claude Code** ou **OpenAI Codex**. O repositório é um template de engenharia: não contém nenhum site. A cada novo projeto você copia a estrutura, preenche um briefing curto e conduz o agente por etapas, aprovando cada fase importante.

> Passo a passo completo para quem vai usar: [TUTORIAL.md](TUTORIAL.md).

## O que ele faz

O agente percorre nove etapas e **para em três portões de aprovação**:

```
Briefing → Discovery → Especificação → [G1] → Design → [G2]
→ Arquitetura e plano → [G3] → Tarefas → Implementação → Verificação → Relatório
```

- Nada é implementado antes de G1, G2 e G3 serem aprovados por você.
- Cada tarefa de implementação exige sua autorização própria.
- O agente não inventa dados do negócio: o que faltar vira `[PREENCHER: ...]`.
- Nada é declarado como testado sem ter sido executado.

## Escopo

Landing pages, sites institucionais, restaurantes, salões e estética, lojas e pequenos comércios, prestadores de serviço e sites comerciais. Stack padrão: **HTML5, CSS3 e JavaScript puro**, conteúdo do site em **pt-BR**. Requisitos além disso (login, pagamento, banco de dados, painel administrativo) são sinalizados com as implicações, e a decisão é sua. Veja `references/scope-limits.md`.

## Requisitos

- Git.
- Claude Code **ou** Codex.
- A skill **frontend-design** instalada no seu agente. O fluxo a usa nas etapas de design e implementação e **não** a inclui nem a substitui. Se ela não estiver disponível, o agente para e avisa. Siga a documentação do seu agente para instalá-la.
- Bash e Python 3 para `scripts/check-repo.sh` (no Windows, Git Bash ou WSL). Opcional.

## Como usar (resumo)

1. Copie o repositório para uma pasta nova, uma por site, e reinicie o histórico do git (detalhes no tutorial).
2. Copie `templates/brief-template.md` para `project/brief.md` e preencha nome, descrição e cores.
3. Abra o agente na pasta e peça:
   `Use a skill website-sdd para iniciar o projeto a partir de project/brief.md.`
4. Revise e aprove G1, G2 e G3 com frases explícitas, e autorize as tarefas uma a uma.

## Estrutura

```
AGENTS.md            Regras centrais para qualquer agente (fonte única)
CLAUDE.md            Adaptador do Claude Code (importa o AGENTS.md)
.agents/skills/      Skills (fonte; usadas pelo Codex)
.claude/skills/      Espelho gerado das skills (usado pelo Claude Code)
workflows/           Etapas, gates e protocolos
templates/           Modelos dos documentos do fluxo
references/          Referências técnicas carregadas sob demanda
scripts/             sync-skills (sh e ps1) e check-repo
```

Durante um projeto o agente cria `project/` (documentos e `STATE.md`) e `site/` (código do site). Essas pastas não existem no template.

### Skills

| Skill | Função |
|---|---|
| `website-sdd` | Orquestra etapas, controla gates e autorização de tarefas |
| `website-discovery` | Pesquisa de segmento, público, concorrentes e referências |
| `website-specification` | Requisitos, sitemap, páginas e critérios de aceite |
| `website-architecture` | Plano técnico e quebra em tarefas |
| `website-verification` | Verificações e relatório final |
| `frontend-design` (externa) | Direção visual e implementação da interface |

## Compatibilidade entre agentes

| | Codex | Claude Code |
|---|---|---|
| Regras | `AGENTS.md` | `CLAUDE.md`, que importa o `AGENTS.md` |
| Skills | `.agents/skills/` | `.claude/skills/` (espelho) |

Depois de editar uma skill em `.agents/skills/`, sincronize o espelho:

```bash
bash scripts/sync-skills.sh        # Linux, macOS, Git Bash, WSL
./scripts/sync-skills.ps1          # PowerShell
bash scripts/check-repo.sh         # valida estrutura, links, espelho e gates
```

## Limitações conhecidas

- A estrutura foi validada por script (arquivos, frontmatter, links, espelho, coerência dos gates). A descoberta das skills e o import `@AGENTS.md` no Claude Code e no Codex **não foram testados em execução** durante a criação. Faça um teste rápido pedindo ao agente para listar as skills do projeto e confira com a documentação atual de cada ferramenta.
- A qualidade da pesquisa de discovery depende de o agente ter acesso à web.
- Verificações de performance e acessibilidade automatizadas dependem de ferramentas presentes no seu ambiente; sem elas, ficam registradas como não executadas.

## Publicar no GitHub

```bash
git init
git add .
git commit -m "feat: Website SDD inicial"
git branch -M main
git remote add origin https://github.com/SEU-USUARIO/website-sdd.git
git push -u origin main
```

No GitHub, em **Settings → General**, marque **Template repository** para poder usar **Use this template** a cada novo site. Escolha e adicione uma licença (arquivo `LICENSE`) conforme sua preferência.

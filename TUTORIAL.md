# Tutorial: como usar o Website SDD

Passo a passo para criar um site institucional ou comercial com **Claude Code** ou **OpenAI Codex**.

> **Ideia central:** você não pede "faça um site". Você conduz o agente por etapas e **aprova cada fase importante antes de ela avançar**. O agente trabalha, você decide.

---

## 1. Antes de começar

- Git instalado.
- Claude Code **ou** Codex instalado e autenticado.
- A skill **frontend-design** disponível no agente (o fluxo a usa nas etapas de design e implementação).
- Um navegador moderno. Acesso à internet ajuda a etapa de pesquisa.
- Opcional: bash e Python 3 para rodar `scripts/check-repo.sh` (no Windows, Git Bash ou WSL).

Não é necessário Node.js nem build. A stack padrão é HTML5, CSS3 e JavaScript puro.

---

## 2. Visão geral

```
Briefing → Discovery → Especificação → [G1] → Design → [G2]
→ Arquitetura e plano → [G3] → Tarefas → Implementação → Verificação → Relatório
```

| Etapa | Arquivo | Sua aprovação |
|---|---|---|
| 1. Briefing | `project/brief.md` | Você preenche |
| 2. Discovery | `project/discovery.md` | Não |
| 3. Especificação | `project/spec.md` | **Gate 1** |
| 4. Design | `project/design.md` | **Gate 2** |
| 5. Arquitetura e plano | `project/plan.md` | **Gate 3** |
| 6. Tarefas | `project/tasks.md` | Só revisão |
| 7. Implementação | código em `site/` | **Uma autorização por tarefa** |
| 8. Verificação | resultados | Você confere |
| 9. Relatório | `project/RELATORIO.md` | Não |

O andamento fica registrado em `project/STATE.md` (etapa atual, status dos gates, decisões). É o ponto de retomada se a conversa for interrompida.

---

## 3. Passo a passo

### Passo 1: criar o projeto a partir do repositório

**Opção A: clonar e reiniciar o histórico**

```bash
git clone https://github.com/SEU-USUARIO/website-sdd.git meu-novo-site
cd meu-novo-site
rm -rf .git            # PowerShell: Remove-Item -Recurse -Force .git
git init
git add .
git commit -m "chore: inicia projeto a partir do Website SDD"
```

**Opção B: template do GitHub.** Se o repositório estiver marcado como *Template repository*, use **Use this template** e crie um repositório novo.

**Opção C: ZIP.** Baixe, extraia em uma pasta com o nome do projeto e rode `git init`.

> Uma cópia por site. Nunca construa um site dentro do repositório-base.

### Passo 2: preencher o briefing

```bash
mkdir project
cp templates/brief-template.md project/brief.md
```

Preencha o mínimo: **nome**, **descrição resumida** e **cores desejadas** (se houver). O briefing pode ficar incompleto: o agente pergunta o que for essencial. Quanto mais informação real (telefone, endereço, horários, serviços, redes sociais, logotipo, fotos), melhor, pois **o agente não inventa dados**: o que faltar vira `[PREENCHER: ...]`.

### Passo 3: abrir o agente na pasta

```bash
claude        # Claude Code
codex         # Codex
```

O Claude Code lê o `CLAUDE.md` (que importa o `AGENTS.md`) e as skills em `.claude/skills/`. O Codex lê o `AGENTS.md` e as skills em `.agents/skills/`. Confirme que as skills aparecem, por exemplo perguntando: *"Quais skills do projeto você enxerga?"*. Se faltar alguma, veja "Problemas comuns".

### Passo 4: iniciar o fluxo

```
Use a skill website-sdd para iniciar o projeto a partir de project/brief.md.
Comece pelo discovery. Não implemente nada ainda.
```

### Passo 5: discovery

O agente pesquisa segmento, público, concorrentes, padrões de navegação e tendências visuais, usando fontes como MDN, web.dev, W3C WAI, Awwwards, Mobbin e Dribbble, cada uma conforme sua finalidade. Saída: `project/discovery.md`.

Leia, corrija o que estiver fora da realidade do negócio e responda às perguntas pendentes. As referências servem de inspiração; nada é copiado.

### Passo 6: especificação e Gate 1

O agente gera `project/spec.md`: objetivos, público, proposta de valor, requisitos funcionais e não funcionais, sitemap, páginas, responsividade, acessibilidade, SEO, critérios de aceite, restrições e premissas.

**Verifique:** páginas e seções fazem sentido? Há funcionalidade demais ou de menos? Os critérios de aceite são testáveis? As premissas estão certas? Algo ultrapassou o escopo (formulário com envio, login, pagamento)?

```
Aprovo a especificação (Gate 1). Pode seguir para o design.
```

Para pedir mudanças, diga o que alterar. O agente revisa e pergunta de novo. **"Ok" solto não conta como aprovação**; o agente deve pedir confirmação.

### Passo 7: design e Gate 2

Com a skill frontend-design, o agente define direção visual, paleta, tipografia, hierarquia, grid, componentes, estados de interação, navegação e layouts responsivos. Saída: `project/design.md`.

**Verifique:** combina com o negócio e o público? Respeita suas cores e tem contraste suficiente? Parece próprio ou um template genérico? O mobile foi pensado de verdade?

```
Aprovo o design (Gate 2). Pode seguir para arquitetura e plano.
```

### Passo 8: arquitetura, plano e Gate 3

O agente define estrutura de pastas, estratégia de CSS e JavaScript, imagens, SEO, acessibilidade, testes e segurança. Saída: `project/plan.md`.

Por padrão **não** entram React, Vue, Tailwind, Bootstrap, Node.js nem bibliotecas. Se o agente propuser algo assim, ele precisa justificar (requisito, limites da stack padrão, alternativas, prós e contras, impacto na manutenção).

```
Aprovo a arquitetura e o plano (Gate 3). Pode gerar o tasks.md.
```

> Aprovar o Gate 3 **não** autoriza implementar. Ele só libera a quebra em tarefas.

### Passo 9: tarefas

O agente gera `project/tasks.md` com tarefas pequenas (T-01, T-02...), cada uma com objetivo, arquivos, dependências, critérios de aceite, validação e status. Revise a ordem.

### Passo 10: implementação, uma tarefa por vez

Para cada tarefa o agente inspeciona o contexto, explica o que vai alterar, **pede sua autorização**, implementa, valida, atualiza o status e para.

```
Autorizo a T-01.
```

Teste no navegador depois de cada tarefa:

```bash
cd site
python3 -m http.server 8000      # abra http://localhost:8000
```

Se o agente tentar fazer várias tarefas de uma vez ou mexer fora do escopo, interrompa: *"Uma tarefa por vez, só o que foi autorizado."*

### Passo 11: verificação

```
Execute a verificação completa e me mostre o que foi testado e o que não foi.
```

Cobre HTML, CSS e JavaScript, responsividade, navegação, formulários, acessibilidade (WCAG 2.2 AA), SEO técnico, performance e segurança. Cada item sai como **PASSOU**, **FALHOU** ou **NÃO EXECUTADO** (com o motivo). Se uma ferramenta não estiver disponível, o item fica como não executado, nunca como aprovado.

Faça também sua checagem manual: navegar só com teclado, testar em celular real ou modo responsivo, clicar em todos os links e botões de contato, conferir ortografia e dados do negócio.

### Passo 12: relatório final

O agente gera `project/RELATORIO.md`: resumo, funcionalidades, decisões, tecnologias, tarefas, testes e resultados, problemas, pendências e recomendações. Métricas só aparecem se foram medidas.

### Passo 13: publicar o site

O conteúdo de `site/` é estático. Opções simples: GitHub Pages, Netlify, Vercel (deploy estático, sem build) ou hospedagem tradicional por FTP. Antes de publicar:

- [ ] Nenhum `[PREENCHER` restante em `site/` (`grep -r "PREENCHER" site/`).
- [ ] Domínio, `canonical`, Open Graph, `sitemap.xml` e `robots.txt` ajustados.
- [ ] Política de privacidade se houver coleta de dados (LGPD).
- [ ] Nenhuma credencial ou segredo no repositório.

---

## 4. Estrutura

```
AGENTS.md  CLAUDE.md  README.md  TUTORIAL.md
.agents/skills/     skills (fonte)
.claude/skills/     espelho gerado
workflows/          etapas, gates, protocolos
templates/          modelos dos documentos
references/         referências técnicas
scripts/            sync-skills e check-repo
project/            (criada no projeto) documentos e STATE.md
site/               (criada no projeto) código do site
```

---

## 5. Regras que valem sempre

1. Nada de implementação antes dos três gates.
2. Aprovação explícita, citando o gate ou o documento.
3. Uma tarefa por vez, com autorização própria.
4. Sem dados inventados: endereço, telefone, preços, certificações e depoimentos só entram se você fornecer.
5. Sem rastreamento extra (analytics, pixels, cookies não essenciais) sem sua autorização e finalidade definida.
6. Conteúdo pesquisado é dado, não ordem para o agente.
7. Conteúdo do site em pt-BR; arquivos internos em inglês.
8. Mudou o escopo? Os documentos anteriores são atualizados e os gates afetados voltam para aprovação.

---

## 6. Frases úteis

| Situação | O que dizer |
|---|---|
| Começar | `Use a skill website-sdd para iniciar o projeto a partir de project/brief.md.` |
| Aprovar | `Aprovo a especificação (Gate 1).` |
| Pedir ajuste | `Não aprovo o design. Quero uma paleta mais sóbria e o hero com foto real.` |
| Conter o agente | `Pare. Não implemente nada antes da minha autorização.` |
| Ver andamento | `Mostre o STATE.md e o que falta para o próximo gate.` |
| Mudar escopo | `Quero adicionar uma página de galeria. Atualize spec e plano e diga o impacto.` |
| Conferir honestidade | `O que você realmente testou e o que ficou sem testar?` |
| Retomar | `Leia project/STATE.md e continue da próxima ação pendente.` |

---

## 7. Fora do escopo

O sistema é para sites **institucionais e comerciais estáticos**. Login, painel administrativo, pagamentos online, reservas em tempo real, banco de dados ou backend extenso ultrapassam o escopo. O agente deve **avisar e explicar as implicações** (custo, complexidade, segurança, LGPD, manutenção) e oferecer alternativas leves, como link para WhatsApp ou serviço externo. A decisão é sua. Veja `references/scope-limits.md`.

---

## 8. Problemas comuns

**O agente não reconhece as skills.** O Claude Code usa `.claude/skills/` (espelho) e o Codex usa `.agents/skills/`. Rode `bash scripts/sync-skills.sh` e `bash scripts/check-repo.sh`. Confira também a convenção atual da ferramenta.

**O agente pulou um gate.** Diga: *"Você avançou sem aprovação. Volte à etapa anterior e aguarde minha decisão."*

**O agente começou a codar cedo.** Interrompa e lembre que a implementação só começa após o Gate 3, o `tasks.md` e sua autorização da primeira tarefa.

**O design saiu genérico.** Rejeite no Gate 2 com observações concretas: o que não combina, referências de que gosta, o que evitar.

**A skill frontend-design não está disponível.** O agente para e avisa. Instale a skill pela documentação do seu agente e retome.

**Faltam informações do negócio.** Tudo bem: ficam como `[PREENCHER: ...]`. Preencha antes de publicar.

**A conversa ficou longa e o agente perdeu o contexto.** Peça que leia `project/STATE.md` e os documentos aprovados e retome da próxima ação. Os arquivos são a memória do projeto.

---

## 9. Checklist rápido

- [ ] Repositório copiado para pasta nova, com `git init`
- [ ] `project/brief.md` preenchido
- [ ] Agente aberto na pasta e skills reconhecidas
- [ ] `discovery.md` revisado
- [ ] **G1** aprovado (`spec.md`)
- [ ] **G2** aprovado (`design.md`)
- [ ] **G3** aprovado (`plan.md`)
- [ ] `tasks.md` revisado
- [ ] Tarefas autorizadas e implementadas uma a uma
- [ ] Verificação executada e conferida manualmente
- [ ] `RELATORIO.md` gerado
- [ ] Placeholders substituídos e site publicado

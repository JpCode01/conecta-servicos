# Design — Conecta Serviços

## 1. Direção visual

**Conexão em camadas:** uma página editorial e arejada que parte de um campo azul escuro
para apresentar a ideia, atravessa blocos claros que explicam cada solução e termina em
um convite direto para conversar. A composição deve sugerir uma ponte entre a ideia do
cliente e sua presença digital, sem usar ícones genéricos, excesso de cards ou gradientes
decorativos.

O elemento memorável será o hero: uma composição abstrata de três faixas/planos
conectados, representando site, conteúdo e identidade visual. Ela deve ser construída com
formas simples e próprias, ou substituída por um ativo autorizado, sem copiar as imagens
de referência.

## 2. Plano de design

### Cores

| Nome | Hex | Uso | Contraste |
|---|---|---|---|
| Azul Conexão | `#0E4180` | Fundo principal, hero, cabeçalho e CTA | 10,06:1 com branco |
| Azul Profundo | `#092E5C` | Texto escuro, hover de CTA e reforço de contraste | 13,49:1 com branco |
| Branco | `#FFFFFF` | Texto sobre azul e superfícies principais | 10,06:1 com azul escuro |
| Azul Horizonte | `#70A3D7` | Linhas, detalhes gráficos e destaque não textual | 3,79:1 com azul escuro; não usar para texto normal |
| Azul Nuvem | `#9CC2EE` | Fundo de apoio, preenchimentos suaves e estados selecionados | 5,45:1 com azul escuro |

O azul escuro deve dominar a abertura e o fechamento. O branco organiza a leitura. Os
azuis claros devem funcionar como estrutura e ritmo, não como texto pequeno sobre fundo
claro.

### Tipografia

Usar uma pilha sans-serif de sistema para preservar velocidade e consistência:
`"Segoe UI", "Helvetica Neue", Arial, sans-serif`.

- **Títulos:** peso 700, com frases curtas e largura controlada; o hero pode chegar a
  clamp(2.5rem, 7vw, 5.75rem), com line-height entre 0,95 e 1,05.
- **Subtítulos:** peso 600, entre 1,25rem e 1,75rem.
- **Corpo:** peso 400, entre 1rem e 1,125rem, line-height de 1,55 a 1,7.
- **Botões e navegação:** peso 600, sentence case, nunca em caixa alta.
- **Largura de leitura:** limitar parágrafos a aproximadamente 65–75 caracteres.

Não carregar fonte externa na primeira versão. A personalidade virá do contraste de
escala, do recorte editorial e da composição em camadas.

### Layout

No desktop, o conteúdo ocupa um eixo central de no máximo 1180 px, com alinhamento
predominantemente à esquerda. O hero usa uma divisão assimétrica: texto em cerca de 55%
da largura e a composição de planos em 45%. As seções seguintes alternam alinhamento
entre texto e blocos de serviço para evitar uma sequência uniforme de cards.

Wireframe desktop:

```text
+------------------------------------------------------------------+
| CONECTA SERVICOS   Inicio  Servicos  Processo  Duvidas   [Whats] |
+------------------------------------------------------------------+
|                                                                  |
|  SUA IDEIA, NA INTERNET                         / plano A /      |
|  E MAIS PERTO DO SEU CLIENTE                    / plano B /      |
|  Solucoes digitais para crescer.                / plano C /      |
|  [Falar no WhatsApp]                            formas proprias  |
|                                                                  |
+------------------------------------------------------------------+
|  Apresentacao                         sinal curto / texto        |
|  texto editorial                      sobre atendimento          |
+------------------------------------------------------------------+
|  SERVICOS                                                          |
|  [sites]              [conteudo]              [identidade]       |
|  descricao             descricao               descricao          |
+------------------------------------------------------------------+
|  COMO TRABALHAMOS                    [1 conversa] [2 direcao]    |
|  linha de processo                    [3 solucao]                |
+------------------------------------------------------------------+
|  DUVIDAS                                  acordeoes simples      |
+------------------------------------------------------------------+
|  FALE SOBRE SUA IDEIA                    [Falar no WhatsApp]     |
|  telefone  email  instagram                                      |
+------------------------------------------------------------------+
| CONECTA SERVICOS                                      rodape      |
+------------------------------------------------------------------+
```

Wireframe mobile:

```text
+-------------------------------+
| CONECTA       menu  [Whats]   |
+-------------------------------+
| SUA IDEIA,                    |
| NA INTERNET E MAIS PERTO      |
| DO SEU CLIENTE                |
| texto                         |
| [Falar no WhatsApp]           |
|      plano A                  |
|      plano B                  |
|      plano C                  |
+-------------------------------+
| apresentacao                  |
+-------------------------------+
| servicos                     |
| sites                        |
| conteudo                     |
| identidade                   |
+-------------------------------+
| processo                     |
| 1 conversa                   |
| 2 direcao                    |
| 3 solucao                    |
+-------------------------------+
| duvidas                      |
+-------------------------------+
| contato + CTA                |
+-------------------------------+
```

### Princípios

1. **Uma ideia por bloco:** cada seção responde a uma pergunta do visitante.
2. **Contraste com propósito:** azul escuro sinaliza decisão; azul claro sinaliza
   orientação.
3. **Ritmo sem repetição:** serviços usam uma linha contínua e variações de posição, não
   três caixas idênticas.
4. **Prova pela clareza:** como não há cases ou depoimentos, o design não simula prova
   social; processo e escopo ocupam esse papel.
5. **Contato sempre próximo:** o WhatsApp aparece nos momentos de entendimento e decisão,
   sem transformar a página em uma sequência de botões.

## 3. Revisão contra o briefing

O plano foi revisado contra o briefing e o discovery:

- preserva a paleta azul e branca fornecida;
- prioriza celular e WhatsApp;
- usa apenas os três serviços confirmados;
- não cria portfólio, métricas, depoimentos, preço ou prazo;
- evita a repetição de conteúdos e a aparência de template apontadas como problemas;
- usa as imagens de `project/brief-assets/` apenas como referência estrutural, não como
  ativos finais.

Uma primeira ideia baseada em cards arredondados, gradientes e ícones para cada serviço
foi descartada por ser genérica e por não resolver a falta de provas autorizadas. A
composição em planos e a linha de processo foram mantidas porque conectam visualmente a
oferta real da empresa.

## 4. Hierarquia e espaçamento

- Container máximo: 1180 px; padding lateral de 24 px no mobile e 40–64 px no desktop.
- Seções: 88–120 px de respiro vertical no desktop; 64–80 px no mobile.
- Escala de espaçamento baseada em 8 px: 8, 16, 24, 32, 48, 64, 96.
- Hero com maior contraste de escala; o restante deve ser mais silencioso.
- Títulos alinhados à esquerda, exceto quando uma microseção de contato precisar de
  centralização para reduzir a distância até o CTA.
- Nunca justificar texto; manter alinhamento à esquerda para leitura em português.

## 5. Grid e composição

- Desktop: grid de 12 colunas, gutter de 24 px.
- Hero: 7 colunas para texto, 5 para composição visual.
- Apresentação: 5 colunas para texto, 4 para síntese visual, 3 para respiro.
- Serviços: uma faixa horizontal com três pontos conectados; em telas intermediárias,
  dois blocos e um bloco abaixo; no mobile, uma coluna.
- Processo: eixo horizontal no desktop e eixo vertical no mobile.
- Dúvidas: coluna de perguntas com respostas expansíveis, sem caixas pesadas.
- Contato: bloco azul escuro de largura total, com canais alternativos em uma linha
  flexível.

## 6. Componentes

- **Header:** marca tipográfica, navegação por âncoras e CTA compacto.
- **Menu mobile:** botão com nome acessível e `aria-expanded`; painel curto com as mesmas
  âncoras do desktop.
- **Hero:** título, resumo, CTA e composição de três planos.
- **Botão primário:** fundo branco sobre azul escuro no hero; fundo azul escuro sobre
  superfícies claras; texto “Falar no WhatsApp”.
- **Link secundário:** telefone, e-mail e Instagram com ícone opcional e texto sempre
  visível.
- **Bloco de serviço:** título, descrição, benefício e pequeno marcador visual conectado
  à linha da seção; não usar três cards idênticos com sombra.
- **Processo:** três etapas em sequência, usando numeração somente porque representa uma
  sequência real.
- **FAQ:** perguntas em sentence case, com expansão acionada pelo próprio botão.
- **Contato:** convite, CTA principal e canais alternativos.
- **Rodapé:** marca, navegação repetida de forma enxuta e links autorizados.

## 7. Estados de interação

- **Hover:** escurecer ou clarear a superfície em cerca de 8–12%, sem deslocar o layout.
- **Focus-visible:** contorno de 3 px em `#9CC2EE` com afastamento de 3 px; em fundo
  claro, usar contorno de `#0E4180`.
- **Active:** reduzir levemente a escala visual ou trocar a cor de fundo, sem depender
  apenas de movimento.
- **Menu aberto:** o botão anuncia `aria-expanded="true"` e o painel permanece dentro da
  ordem de foco.
- **FAQ aberto:** o botão anuncia o estado; a resposta surge sem empurrar o foco para
  local inesperado.
- **Disabled:** não previsto para a primeira versão; não criar estados sem função real.
- **Reduced motion:** transições e qualquer entrada da composição são reduzidas ou
  removidas com `prefers-reduced-motion: reduce`.

## 8. Navegação

No desktop, a navegação fica no topo com links para Início, Serviços, Processo, Dúvidas e
Contato. No mobile, o menu é recolhido e o CTA de WhatsApp permanece visível no header.

Os links usam exatamente os nomes das seções. Após selecionar uma âncora no menu mobile,
o painel fecha e o foco retorna ao botão do menu. Um possível header sticky não deve
ocultar o título da seção; se usado, deve aplicar `scroll-margin-top`.

## 9. Layouts responsivos

- **320–767 px:** uma coluna, hero empilhado, composição visual abaixo do CTA, processo
  vertical, menu recolhido e CTA com área mínima de 44 px.
- **768–1023 px:** duas colunas onde houver espaço, navegação ainda pode ser recolhida,
  serviços em composição 2+1.
- **1024 px ou mais:** navegação completa, hero assimétrico e processo horizontal.
- **1440 px ou mais:** manter container limitado; ampliar respiro, não esticar texto.

O conteúdo não deve depender de hover. Todas as interações devem funcionar por toque,
teclado e leitor de tela. O zoom de 200% deve preservar a ordem e a leitura.

## 10. Movimento

O movimento deve ser mínimo e funcional:

- entrada única e suave da composição de planos no carregamento, se não prejudicar o
  LCP;
- transição curta ao abrir menu e FAQ;
- nenhuma animação contínua, carrossel automático ou parallax;
- desativar movimentos não essenciais em `prefers-reduced-motion: reduce`.

## 11. Imagens e ativos

- Não há portfólio, cases ou imagens próprias autorizadas para a primeira versão.
- As imagens em `project/brief-assets/` não devem ser publicadas sem autorização
  específica; servem apenas para entender estrutura.
- Preferir a composição abstrata de planos criada para o hero, com `aria-hidden="true"` se
  for puramente decorativa.
- Se uma imagem informativa for adicionada, usar ativo autorizado, proporção definida,
  dimensões explícitas e `alt` equivalente.
- Não usar banco de imagens genéricas como substituto de prova social.
- Logo final: `[PREENCHER: fornecer arquivo ou autorizar marca tipográfica]`.

## 12. Diretrizes de texto

- Tom próximo, claro e profissional; frases curtas, verbos ativos e sem jargão.
- Não usar caixa alta em rótulos ou títulos.
- Manter a proposta “Sua ideia, na internet e mais perto do seu cliente” no hero, com
  apoio explicativo sem repetir o mesmo texto em outras seções.
- CTA principal sempre com a mesma ação: “Falar no WhatsApp”.
- Usar “Conheça as soluções” para navegação interna, não “Saiba mais” sem contexto.
- Descrever serviços sem inventar entregas, preços ou prazos.
- FAQ pendente: `[PREENCHER: validar respostas sobre prazo, investimento e entrega]`.
- Processo pendente: `[PREENCHER: validar etapas e prazos comunicáveis]`.
- Como não há formulário, não haverá estado de erro ou sucesso de envio nesta versão.

## 13. Referências usadas

- Briefing e ativos do projeto: `project/brief.md` e `project/brief-assets/`.
- Discovery do projeto: `project/discovery.md`.
- RD Station, para observar organização de soluções e chamadas de ação:
  https://www.rdstation.com/
- Conversion, para observar arquitetura de serviços e contato:
  https://www.conversion.com.br/
- Brivia, para observar navegação de serviços e cases:
  https://www.brivia.com.br/

As referências foram usadas para análise de padrões. Não serão copiados layout, texto,
marca, código ou ativos protegidos.

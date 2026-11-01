# Especificação — Conecta Serviços

## 1. Visão geral

A Conecta Serviços terá uma página institucional de serviços para apresentar soluções digitais e gerar conversas com potenciais clientes. O site será uma página única, em pt-BR, com navegação por seções e foco em uso mobile.

A primeira versão apresentará somente:

- criação de sites;
- produção de conteúdo;
- identidade visual.

O WhatsApp será a ação principal. Telefone, e-mail e Instagram serão canais alternativos autorizados.

## 2. Objetivos do site

1. Explicar com clareza o que a Conecta Serviços oferece.
2. Ajudar o visitante a identificar qual solução pode atender à sua necessidade.
3. Comunicar profissionalismo, proximidade e atendimento personalizado sem inventar credenciais, resultados ou prazos.
4. Conduzir o visitante a iniciar uma conversa pelo WhatsApp.
5. Oferecer alternativas de contato por telefone, e-mail e Instagram.
6. Evitar os problemas apontados no briefing: repetição de conteúdo, má formatação, baixa responsividade e ausência de identidade visual.

## 3. Público-alvo

- Empreendedores e empresas de diferentes portes que desejam fortalecer a presença online.
- Pessoas que precisam de um site, conteúdo ou identidade visual e não sabem necessariamente qual solução escolher.
- Visitantes que chegam principalmente por celular, redes sociais, busca ou indicação.
- Usuários que valorizam uma conversa inicial rápida, prática e personalizada.

Principais necessidades: entender os serviços, conhecer o processo inicial, avaliar se a empresa atende sua demanda e encontrar um canal simples de contato.

## 4. Proposta de valor

**Sua ideia, na internet e mais perto do seu cliente.**

A Conecta Serviços transforma ideias em soluções digitais para ajudar empreendedores e empresas a se apresentarem com mais profissionalismo e fortalecerem sua presença online. A comunicação deve enfatizar clareza, orientação e adequação à necessidade do cliente, sem prometer métricas ou resultados que não foram comprovados.

## 5. Requisitos funcionais

| ID | Requisito | Prioridade |
|---|---|---|
| FR-01 | Apresentar a Conecta Serviços e sua proposta de valor em uma seção inicial com título, resumo e CTA principal. | essencial |
| FR-02 | Exibir os três serviços da primeira versão: criação de sites, produção de conteúdo e identidade visual. | essencial |
| FR-03 | Explicar cada serviço com descrição objetiva e benefício ou problema atendido, sem inventar entregas específicas ainda não confirmadas. | essencial |
| FR-04 | Apresentar uma seção sobre a forma de atendimento e o próximo passo do cliente, usando `[PREENCHER: ...]` onde o processo ainda não foi definido. | essencial |
| FR-05 | Disponibilizar CTA para WhatsApp no cabeçalho, na seção inicial, após os serviços e na seção final de contato. | essencial |
| FR-06 | Disponibilizar telefone, e-mail e Instagram como alternativas de contato ou relacionamento. | essencial |
| FR-07 | Usar navegação interna por âncoras para as seções principais da página. | essencial |
| FR-08 | Apresentar perguntas frequentes ou orientações curtas para reduzir dúvidas sobre a contratação, sem criar respostas factuais não confirmadas. | desejável |
| FR-09 | Permitir que o conteúdo principal e os links de contato sejam compreendidos sem dependência de JavaScript. | essencial |
| FR-10 | Exibir a identidade visual baseada na paleta fornecida: azul escuro `#0E4180`, branco `#FFFFFF`, azul intermediário `#70A3D7` e azul suave `#9CC2EE`. | essencial |

## 6. Requisitos não funcionais

| ID | Requisito |
|---|---|
| NFR-01 | O conteúdo deve estar em português do Brasil e usar linguagem clara para pessoas com diferentes níveis de conhecimento digital. |
| NFR-02 | A página deve ser responsiva a partir de 320 px de largura, sem rolagem horizontal ou perda de conteúdo. |
| NFR-03 | A página deve seguir HTML semântico, possuir um único `h1`, hierarquia correta de headings e `lang="pt-BR"`. |
| NFR-04 | A interface deve atender ao objetivo WCAG 2.2 AA: contraste adequado, foco visível, operação por teclado, nomes acessíveis e alternativas textuais para imagens relevantes. |
| NFR-05 | O carregamento deve priorizar desempenho: imagens otimizadas, dimensões explícitas, JavaScript mínimo e ausência de scripts de terceiros não autorizados. |
| NFR-06 | Como referência de qualidade, buscar LCP até 2,5 s, INP até 200 ms e CLS até 0,1 no percentil 75, quando houver ferramenta de medição disponível. |
| NFR-07 | O conteúdo deve ser indexável, com title, meta description, headings, links descritivos e metadados sociais coerentes. |
| NFR-08 | Links externos abertos em nova aba devem usar `rel="noopener noreferrer"`. |
| NFR-09 | Não devem existir segredos, tokens, credenciais, analytics, pixels, cookies não essenciais ou widgets de terceiros sem autorização específica. |
| NFR-10 | A página deve funcionar nos navegadores atuais em celular e desktop, com conteúdo e navegação utilizáveis sem efeitos visuais essenciais. |

## 7. Sitemap

| URL | Conteúdo |
|---|---|
| `/` | Página institucional com as seções Início, Serviços, Como trabalhamos, Dúvidas e Contato |

As seções podem usar âncoras descritivas, por exemplo `#servicos`, `#processo`, `#duvidas` e `#contato`. Não haverá páginas internas na primeira versão.

## 8. Páginas e seções

### Página `/`

**Objetivo:** apresentar a Conecta Serviços e converter o interesse em conversa.

**Seções em ordem:**

1. **Cabeçalho e navegação**
   - Nome/marca Conecta Serviços.
   - Links para Início, Serviços, Processo, Dúvidas e Contato.
   - CTA persistente “Falar no WhatsApp”.

2. **Início / hero**
   - Título baseado em “Sua ideia, na internet e mais perto do seu cliente”.
   - Texto de apoio sobre soluções digitais para o negócio crescer.
   - CTA principal para WhatsApp.
   - Elemento visual próprio, usando somente ativos autorizados e sem copiar a identidade das imagens de referência.

3. **Apresentação**
   - Texto-base: “Na Conecta Serviços, transformamos ideias em soluções digitais...”.
   - Explicação breve sobre atendimento online e personalizado.
   - Não incluir história, equipe, certificações ou números não fornecidos.

4. **Serviços**
   - Card ou bloco de criação de sites.
   - Card ou bloco de produção de conteúdo.
   - Card ou bloco de identidade visual.
   - Cada item deve responder: o que é, para qual necessidade serve e qual é o próximo passo.
   - Não incluir “e muito mais” como oferta principal sem especificação dos serviços adicionais.

5. **Como trabalhamos**
   - Etapa de conversa inicial.
   - Etapa de entendimento da necessidade.
   - Etapa de definição da solução.
   - Etapas posteriores: `[PREENCHER: confirmar processo e entregas antes da publicação]`.

6. **Dúvidas frequentes**
   - Para quem são os serviços.
   - Como descobrir qual solução é adequada.
   - Como iniciar o atendimento.
   - Prazo, investimento e formato de entrega: `[PREENCHER: respostas autorizadas pelo negócio]`.
   - Não criar preços, prazos, garantias ou depoimentos.

7. **Contato**
   - Título convidando o visitante a explicar sua ideia ou necessidade.
   - CTA principal para WhatsApp.
   - Telefone: `+55 11 967742220`.
   - E-mail: `conectaservicosplus@gmail.com`.
   - Instagram: `https://www.instagram.com/conecta_servicoss/`.
   - WhatsApp: `https://wa.me/message/IABHM6L7KRVCD1`.
   - Aviso breve de finalidade caso algum formulário seja considerado no futuro; formulário não faz parte desta versão.

8. **Rodapé**
   - Nome da empresa.
   - Links de navegação e canais autorizados.
   - Política de privacidade: `[PREENCHER: conteúdo e responsável antes de coletar dados por formulário ou inserir rastreamento]`.

**CTA primário da página:** “Falar no WhatsApp”.

## 9. Funcionalidades e regras de negócio

- Os CTAs de WhatsApp devem abrir o link autorizado `https://wa.me/message/IABHM6L7KRVCD1`.
- O link de telefone deve usar o formato `tel:+5511967742220`, após confirmação do formato final.
- O link de e-mail deve usar `mailto:conectaservicosplus@gmail.com`.
- O link do Instagram deve apontar para o endereço autorizado e ter nome acessível.
- A mensagem pré-preenchida do WhatsApp só deve ser adicionada se for aprovada pelo negócio; não será inventada nesta especificação.
- Não haverá formulário de contato na primeira versão. Assim, nenhum dado pessoal será coletado ou armazenado pelo site.
- Não haverá envio de e-mail por backend, banco de dados, login, pagamento, agenda com disponibilidade ou painel administrativo.
- Não haverá mapa, endereço físico, horário de atendimento ou dados de localização, pois não foram fornecidos.
- Não haverá avaliações, depoimentos, portfólio ou métricas, pois o briefing confirmou que não há materiais para publicar agora.
- Todo conteúdo deve continuar legível e navegável quando JavaScript estiver desabilitado.

## 10. Responsividade

- Estratégia mobile-first, priorizando visitantes vindos de redes sociais e WhatsApp.
- Testar pelo menos 320 px, 375 px, 768 px, 1024 px e 1440 px.
- Em telas estreitas, a navegação deve ser acessível sem exigir rolagem horizontal; se houver menu recolhido, ele deve ser operável por teclado e anunciar seu estado.
- Cards de serviços devem reorganizar-se sem cortar texto ou criar colunas ilegíveis.
- CTAs devem permanecer identificáveis e ter área de interação adequada.
- Em zoom de 200%, o conteúdo não deve perder informação essencial nem exigir rolagem em duas dimensões para leitura normal.

## 11. Acessibilidade

O alvo é WCAG 2.2 AA, dentro do escopo de uma página institucional:

- usar landmarks `header`, `nav`, `main` e `footer`;
- manter um único `h1` e ordem lógica de headings;
- fornecer nome acessível para cada link e botão;
- garantir foco visível e ordem de foco coerente;
- permitir navegação e ativação dos CTAs por teclado;
- não usar cor como único meio de transmitir informação;
- manter contraste mínimo de 4,5:1 para texto normal e 3:1 para texto grande ou componentes de interface;
- fornecer `alt` descritivo para imagens informativas e `alt=""` para imagens decorativas;
- respeitar `prefers-reduced-motion` para animações não essenciais;
- não incluir formulário nesta versão; se ele for adicionado, seus campos precisarão de labels visíveis, mensagens de erro e finalidade LGPD.

## 12. SEO

- `title` único em pt-BR, com aproximadamente 50–60 caracteres: `[PREENCHER: título SEO aprovado]`.
- `meta description` única em pt-BR, com aproximadamente 150–160 caracteres: `[PREENCHER: descrição SEO aprovada]`.
- Um `h1` relacionado à proposta de valor da Conecta Serviços.
- Headings e textos devem descrever serviços reais: sites, produção de conteúdo e identidade visual.
- URLs e âncoras devem ser curtas, minúsculas e descritivas.
- Links internos devem usar textos compreensíveis fora de contexto.
- Incluir Open Graph e, se aplicável, Twitter Card com imagem real autorizada; não inventar imagem de compartilhamento.
- Incluir canonical quando o domínio final for conhecido: `[PREENCHER: domínio oficial]`.
- `robots.txt` e `sitemap.xml` ficam condicionados à definição do domínio e à decisão de publicação.
- Não usar dados estruturados de negócio local, avaliações, preços, horários ou endereço sem dados reais.

## 13. Conteúdo e ativos necessários

| Item | Origem | Status |
|---|---|---|
| Nome “Conecta Serviços” | Briefing | fornecido |
| Proposta “Sua ideia, na internet e mais perto do seu cliente” | Briefing | fornecido |
| Texto institucional base | Briefing | fornecido |
| Lista inicial de serviços | Briefing + revisão do discovery | fornecido, delimitado a sites, conteúdo e identidade visual |
| Paleta `#0E4180`, `#FFFFFF`, `#70A3D7`, `#9CC2EE` | Briefing | fornecido |
| Telefone | Briefing e confirmação da revisão | fornecido e autorizado |
| WhatsApp | Briefing e confirmação da revisão | fornecido e autorizado |
| E-mail | Briefing e confirmação da revisão | fornecido e autorizado |
| Instagram | Briefing e confirmação da revisão | fornecido e autorizado |
| Logotipo final | Negócio | pendente — `[PREENCHER: fornecer logotipo ou autorizar composição tipográfica]` |
| Textos finais dos três serviços | Negócio | pendente — `[PREENCHER: confirmar entregas, limites e benefícios de cada serviço]` |
| Processo de atendimento | Negócio | pendente — `[PREENCHER: confirmar etapas e prazos comunicáveis]` |
| FAQ final | Negócio | pendente — `[PREENCHER: validar respostas sobre prazo, investimento e entrega]` |
| Title e meta description | Negócio/projeto | pendente — `[PREENCHER: aprovar textos SEO]` |
| Domínio oficial | Negócio | pendente — `[PREENCHER: informar domínio, se houver]` |
| Imagem de compartilhamento e imagens próprias | Negócio | pendente — não usar referências como ativos finais |
| Política de privacidade | Negócio, com revisão adequada | pendente — `[PREENCHER: responsável e texto aplicável]` |

## 14. Critérios de aceite

| ID | Critério | Requisitos relacionados | Como verificar |
|---|---|---|---|
| AC-01 | A página informa claramente o nome Conecta Serviços, sua proposta de valor e o objetivo de fortalecer a presença online. | FR-01, NFR-01 | Abrir `/` e revisar visualmente o hero e a apresentação; confirmar que o texto aparece sem JavaScript. |
| AC-02 | A página apresenta exatamente os três serviços confirmados na primeira versão: sites, produção de conteúdo e identidade visual. | FR-02, FR-03 | Inspecionar a seção Serviços e conferir os três títulos e descrições; confirmar ausência de serviços não aprovados como oferta principal. |
| AC-03 | Existe CTA “Falar no WhatsApp” no cabeçalho, no hero, após os serviços e na seção de contato. | FR-05 | Percorrer a página e verificar cada posição; ativar cada link e confirmar o destino `https://wa.me/message/IABHM6L7KRVCD1`. |
| AC-04 | Telefone, e-mail e Instagram aparecem como canais alternativos com destinos corretos. | FR-06 | Ativar os links em navegador compatível e conferir `tel:+5511967742220`, `mailto:conectaservicosplus@gmail.com` e a URL do Instagram. |
| AC-05 | A navegação interna leva às seções Início, Serviços, Processo, Dúvidas e Contato. | FR-07 | Clicar em cada item do menu e conferir a seção correspondente e a posição de foco/scroll. |
| AC-06 | Nenhuma seção publica preço, prazo, depoimento, portfólio, métrica, endereço ou certificação não fornecidos. | FR-03, FR-04, NFR-09 | Revisar o conteúdo renderizado e procurar por esses dados; validar placeholders pendentes antes da publicação. |
| AC-07 | Em 320 px, 375 px, 768 px, 1024 px e 1440 px não há rolagem horizontal e todo o conteúdo permanece legível. | NFR-02, NFR-10 | Usar modo responsivo do navegador nas cinco larguras e verificar `scrollWidth <= clientWidth`, além de inspeção visual. |
| AC-08 | A página apresenta um único `h1`, landmarks semânticos e idioma `pt-BR`. | NFR-03 | Inspecionar o HTML ou usar ferramenta de acessibilidade; contar os `h1` e verificar landmarks e atributo `lang`. |
| AC-09 | Todos os links e controles são acessíveis por teclado, possuem foco visível e nomes compreensíveis. | NFR-04 | Fazer percurso apenas com teclado, ativar os CTAs e executar auditoria de acessibilidade quando disponível. |
| AC-10 | Imagens informativas possuem texto alternativo e imagens decorativas não geram ruído para leitor de tela. | NFR-04 | Inspecionar atributos `alt` e executar teste com ferramenta de acessibilidade ou leitor de tela quando disponível. |
| AC-11 | A página não carrega analytics, pixels, cookies não essenciais, widgets ou integrações externas não autorizadas. | NFR-09 | Inspecionar scripts, requisições de rede e armazenamento do navegador em uma sessão limpa. |
| AC-12 | A página contém title, meta description, headings hierárquicos, `lang="pt-BR"` e links descritivos. | NFR-03, NFR-07 | Inspecionar o `<head>` e a árvore de headings; validar textos com checklist SEO. |
| AC-13 | O conteúdo continua disponível e os links continuam acionáveis com JavaScript desabilitado. | FR-09 | Desabilitar JavaScript no navegador, recarregar e repetir a navegação e os testes de links. |
| AC-14 | O desempenho atende ou mede os alvos de LCP ≤ 2,5 s, INP ≤ 200 ms e CLS ≤ 0,1 quando a ferramenta e o ambiente permitirem. | NFR-05, NFR-06 | Executar Lighthouse ou outra ferramenta equivalente em mobile; registrar cada métrica como PASSED, FAILED ou NOT RUN. |
| AC-15 | O conteúdo não usa a identidade, o texto ou a composição das imagens de referência como se fossem ativos próprios. | FR-10, NFR-09 | Comparar os ativos finais com `project/brief-assets/` e revisar autorização/origem de cada imagem. |

## 15. Restrições

- O site deve permanecer dentro do escopo de página institucional/serviços estática.
- Não inventar dados comerciais, provas, clientes, métricas, preços, prazos, endereço, horários ou credenciais.
- Dados ausentes devem ser preenchidos com `[PREENCHER: ...]` até validação do negócio.
- Conteúdo visível ao visitante deve estar em pt-BR.
- A paleta aprovada deve orientar a identidade visual, sem assumir que as imagens de referência são identidade final.
- Não implementar site, arquivos em `site/` ou funcionalidades de escopo futuro antes do Gate 3 e da autorização da tarefa correspondente.
- Não incluir tracking, cookies não essenciais ou terceiros sem autorização e análise de privacidade.

## 16. Itens fora de escopo

| Item | Motivo e implicação | Alternativa |
|---|---|---|
| Formulário que envia mensagens | Site estático não envia dados sozinho; exigiria serviço externo ou backend e revisão LGPD. | Usar WhatsApp, telefone e e-mail nesta versão; avaliar serviço de formulário em projeto posterior. |
| Login, área de cliente ou painel administrativo | Exige autenticação, banco, backend e responsabilidades adicionais de segurança. | Manter página estática e atendimento por canais autorizados. |
| Pagamento, carrinho ou checkout | Exige provedor, regras comerciais, segurança e possível integração backend. | Não incluir; tratar em projeto separado. |
| Agendamento com disponibilidade em tempo real | Exige serviço ou lógica de agenda. | Conversa inicial via WhatsApp. |
| CMS, blog ou catálogo atualizado frequentemente | Exige processo editorial ou CMS e aumenta manutenção. | Página institucional estática com conteúdo validado; reavaliar em G3 se necessário. |
| Analytics, anúncios, pixels e chat widgets | Envolvem terceiros, cookies e consentimento LGPD. | Não incluir sem autorização específica. |
| Múltiplos idiomas | Multiplica conteúdo, SEO e manutenção. | Manter pt-BR na primeira versão. |
| Portfólio, cases e depoimentos | Não há materiais autorizados nesta versão. | Adicionar somente quando houver ativos e permissões verificáveis. |

## 17. Dúvidas e premissas

### Dúvidas abertas

- Qual é o processo real de atendimento e quais etapas podem ser publicadas?
- Quais entregas e limites devem ser descritos para cada um dos três serviços?
- Há nichos prioritários ou a comunicação permanece ampla?
- Existe logotipo final ou deve ser usada composição tipográfica?
- Quais respostas sobre prazo, investimento e entrega podem constar no FAQ?
- Qual domínio será usado na publicação?
- Qual texto de política de privacidade será aplicável, mesmo sem formulário nesta versão?
- O telefone deve abrir ligação, WhatsApp ou ambos?

### Premissas

- A primeira versão será uma página única institucional, não um site multi-página.
- O WhatsApp é o CTA principal e os quatro canais de contato fornecidos estão autorizados.
- A atuação será descrita como online, sem declarar cidade, região ou abrangência geográfica.
- Não haverá coleta ou armazenamento de dados pelo site na primeira versão.
- Não haverá portfólio, cases, depoimentos, métricas ou provas sociais.
- Os textos finais dos serviços e do processo serão validados antes da publicação.
- O domínio, hospedagem e prazo permanecem indefinidos e não fazem parte da especificação atual.

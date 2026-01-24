# Padrão de Documentação - Estilo Visual ASCII

Este documento define os padrões visuais para formatação de documentação estruturada em arquivos Markdown do repositório.

## Objetivo

Criar documentação com visual retrô inspirado em terminais DOS/Unix dos anos 80/90, maximizando legibilidade em:

-  Visualizadores de texto puro (cat, less, vim)
-  Diffs do Git
-  Editores sem renderização Markdown
-  Impressão em terminais

## Estilo 1: Retro Terminal com Banners

Use este estilo para **relatórios de status, análises de conformidade e validações** onde você precisa mostrar múltiplos itens com indicadores visuais de progresso ou estado.

### Estrutura do Estilo 1

```markdown
===============================================================================
                        TITULO DO RELATORIO - v1.0
===============================================================================

[####] ITEM COMPLETO .................................................. OK
       Descrição ou detalhes do item
       Informações adicionais se necessário

[#---] ITEM PARCIAL .................................................. WARN
       Descrição do que está parcialmente implementado
       Detalhes sobre o que falta

[    ] ITEM PENDENTE ................................................. FAIL
       Descrição do que não está implementado
       Razão ou próximos passos

===============================================================================
STATUS: X/Y completos | N warnings | M pendentes
===============================================================================
```

### Regras do Estilo 1

-  Título centralizado entre linhas de `=` (79 caracteres)
-  Indicadores de progresso: `[####]` (completo), `[#---]` (parcial), `[    ]` (vazio)
-  Status alinhado à direita: `OK`, `WARN`, `FAIL`
-  Pontos (`.`) preenchem o espaço entre descrição e status
-  Indentação de 7 espaços para detalhes (alinhado após os colchetes)
-  Rodapé com resumo estatístico

### Exemplo do Estilo 1

```markdown
===============================================================================
                        ANALISE DE CONFORMIDADE - v1.0
===============================================================================

[####] DOCUMENTACAO VERSIONADA COM CODIGO ................................. OK
       docs-guard exige atualizacao de docs/* ou *.md em PRs

[####] ADRs ............................................................... OK
       docs/adr/ com 0001-0004; formato e numeracao consistentes

[#---] CHANGELOG ......................................................... WARN
       Makefile (ops-sync) espera ../docs/changelog.md
       Uso opcional (dev local); nao bloqueia CI nem deploy

[    ] CONTRIBUTING NA RAIZ .............................................. FAIL
       Repo docs tem CONTRIBUTING.md; smart-ui nao
       Existe "Como Contribuir" em docs/README.md e ORGANIZATION

===============================================================================
STATUS: 2/4 completos | 1 warning | 1 pendente
===============================================================================
```

## Estilo 2: Box Drawing com Hierarquia

Use este estilo para **evidências, dados estruturados e informações categorizadas** onde você precisa mostrar relações hierárquicas e detalhes organizados por seção.

### Estrutura do Estilo 2

```markdown
┌─────────────────────────────────────────────────────────────────────────────┐
│ ▓▓▓ TÍTULO DA SEÇÃO                                                         │
├─────────────────────────────────────────────────────────────────────────────┤
│ └─ Item principal                                                           │
│    └─ Sub-item ou detalhe                                                   │
│ └─ Outro item principal                                                     │
│    └─ Detalhe adicional                                                     │
│    └─ Mais informações                                                      │
├─────────────────────────────────────────────────────────────────────────────┤
│ ▓▓▓ PRÓXIMA SEÇÃO                                                           │
├─────────────────────────────────────────────────────────────────────────────┤
│ └─ Informação relevante                                                     │
└─────────────────────────────────────────────────────────────────────────────┘
```

### Regras do Estilo 2

-  Use caracteres box drawing: `┌─┐ ├─┤ └─┘ │`
-  Títulos de seção precedidos por `▓▓▓` (3 blocos)
-  Largura interna de 77 caracteres (79 total com bordas)
-  Hierarquia com `└─` (1 nível) e indentação de 3 espaços para sub-itens
-  Separadores `├─┤` entre seções
-  Mantenha acentuação e caracteres especiais do português

### Exemplo do Estilo 2

```markdown
┌─────────────────────────────────────────────────────────────────────────────┐
│ ▓▓▓ GIT SUBMODULE                                                           │
├─────────────────────────────────────────────────────────────────────────────┤
│ └─ Nao existe .gitmodules                                                   │
│ └─ Nenhum submodule apontando para docs                                     │
├─────────────────────────────────────────────────────────────────────────────┤
│ ▓▓▓ REMOTE                                                                  │
├─────────────────────────────────────────────────────────────────────────────┤
│ └─ origin → git@github.com:neo-smart-token-factory/smart-ui.git            │
├─────────────────────────────────────────────────────────────────────────────┤
│ ▓▓▓ WORKFLOWS                                                               │
├─────────────────────────────────────────────────────────────────────────────┤
│ └─ docs-guard.yml                                                           │
│    └─ Valida so docs/* e *.md LOCAIS do smart-ui                            │
│ └─ protocol-health.yml                                                      │
│    └─ Faz checkout de neo-smart-factory (Core/Ops)                          │
│    └─ NAO do repo docs                                                      │
├─────────────────────────────────────────────────────────────────────────────┤
│ ▓▓▓ MAKEFILE                                                                │
├─────────────────────────────────────────────────────────────────────────────┤
│ └─ DOCS_DIR = ../docs                                                       │
│ └─ Usado em ops-sync para checar $(DOCS_DIR)/changelog.md                   │
│ └─ Assume CLONE PARALELO em ../docs (dev local)                             │
│ └─ Nao e dependencia de build/CI                                            │
└─────────────────────────────────────────────────────────────────────────────┘
```

## Quando Usar Cada Estilo

### Use Estilo 1 (Retro Terminal) para

-  ✓ Análises de conformidade
-  ✓ Checklists de validação
-  ✓ Relatórios de status
-  ✓ Resumos de progresso
-  ✓ Auditorias e verificações

### Use Estilo 2 (Box Drawing) para

-  ✓ Evidências técnicas
-  ✓ Dados estruturados por categoria
-  ✓ Configurações e parâmetros
-  ✓ Informações hierárquicas
-  ✓ Detalhamento de componentes

## Documentação de Erros e Soluções

### Onde Documentar Erros

Erros e suas soluções padronizadas devem ser documentados usando o **Estilo 1 (Retro Terminal)** em:

-  Arquivos de análise de problemas (`ANALYSIS.md`, `ISSUES.md`)
-  Relatórios de troubleshooting (`TROUBLESHOOTING.md`)
-  Documentação de correções conhecidas (`FIXES.md`, `SOLUTIONS.md`)
-  Seções específicas em READMEs quando aplicável

### Formato Padronizado para Erros

Use este formato para documentar erros e soluções:

```markdown
===============================================================================
                        ERRO: Descrição Breve do Erro
===============================================================================

[####] ERRO IDENTIFICADO .................................................. OK
       Mensagem de erro completa ou trecho relevante
       Contexto onde o erro ocorre

[####] CAUSA RAIZ ......................................................... OK
       Explicação técnica da causa do problema
       Detalhes sobre condições que levam ao erro

[####] SOLUCAO APLICADA .................................................... OK
       Passos para resolver o problema
       Comandos ou código necessário (se aplicável)

[    ] PREVENCAO FUTURA ................................................... FAIL
       Medidas para evitar que o erro ocorra novamente
       Checklist ou validações recomendadas

===============================================================================
STATUS: 3/4 resolvidos | 0 warnings | 1 pendente
===============================================================================
```

### Exemplo Real de Documentação de Erro

```markdown
===============================================================================
                        ERRO: Cache npm sem package-lock.json
===============================================================================

[####] ERRO IDENTIFICADO .................................................. OK
       Error: Dependencies lock file is not found
       Supported file patterns: package-lock.json, npm-shrinkwrap.json, yarn.lock
       Ocorre em workflows GitHub Actions ao usar cache sem lock file

[####] CAUSA RAIZ ......................................................... OK
       setup-node@v4 tenta usar cache mesmo quando nao ha package-lock.json
       Template repositories podem nao ter dependencias inicialmente
       Cache requer lock file para funcionar corretamente

[####] SOLUCAO APLICADA .................................................... OK
       Usar dois steps condicionais separados:
       - Setup Node.js (with cache): apenas se has_package_lock == 'true'
       - Setup Node.js (without cache): apenas se has_package_lock == 'false'
       Evita passar string vazia para cache (nao funciona)

[####] PREVENCAO FUTURA ................................................... OK
       Sempre verificar existencia de lock file antes de usar cache
       Usar condicoes if: nos steps ao inves de valores condicionais
       Documentar quando workflows requerem dependencias

===============================================================================
STATUS: 4/4 resolvidos | 0 warnings | 0 pendentes
===============================================================================
```

### Regras para Documentação de Erros

-  Use status `OK` para itens resolvidos/documentados
-  Use status `WARN` para soluções temporárias ou workarounds
-  Use status `FAIL` para problemas ainda não resolvidos
-  Inclua sempre: erro identificado, causa raiz, solução aplicada
-  Adicione prevenção futura quando possível
-  Mantenha largura de 79 caracteres
-  Use português claro e objetivo

## Caracteres Especiais

### Box Drawing Characters

```text
┌ └ ┐ ┘ ─ │ ├ ┤ ┬ ┴ ┼
```

### Outros Símbolos

```text
▓ (bloco cheio)
→ (seta)
• (bullet)
[####] [#---] [    ] (barras de progresso)
```

## Evite

-  ❌ Tabelas Markdown tradicionais (`| col1 | col2 |`)
-  ❌ Listas com bullet points simples para dados estruturados
-  ❌ Formatação que depende de renderização HTML/MD
-  ❌ Emojis (use símbolos ASCII: OK/WARN/FAIL em vez de ✓/⚠/✗)
-  ❌ Largura variável (mantenha consistência em 79 caracteres)

## Compatibilidade

Estes formatos foram testados e funcionam perfeitamente em:

-  ✓ Terminais Unix/Linux (xterm, gnome-terminal, kitty)
-  ✓ Terminal do Windows (cmd, PowerShell, Windows Terminal)
-  ✓ Editores de texto (vim, nano, emacs, VSCode)
-  ✓ Visualizadores (cat, less, more, bat)
-  ✓ Git diffs (terminal e interfaces web)
-  ✓ Navegadores (via `<pre>` ou renderização MD)

## Encoding

Sempre use **UTF-8** para garantir a renderização correta dos caracteres box drawing e símbolos especiais.

# Padrão de Documentação - Estilo Visual ASCII

Este documento define os padrões visuais para formatação de documentação estruturada em arquivos Markdown do repositório.

## Objetivo

Criar documentação com visual retrô inspirado em terminais DOS/Unix dos anos 80/90, maximizando legibilidade em:

- Visualizadores de texto puro (cat, less, vim)
- Diffs do Git
- Editores sem renderização Markdown
- Impressão em terminais

## Estilo 1: Retro Terminal com Banners

Use este estilo para **relatórios de status, análises de conformidade e validações** onde você precisa mostrar múltiplos itens com indicadores visuais de progresso ou estado.

### Estrutura

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

### Regras

- Título centralizado entre linhas de `=` (79 caracteres)
- Indicadores de progresso: `[####]` (completo), `[#---]` (parcial), `[    ]` (vazio)
- Status alinhado à direita: `OK`, `WARN`, `FAIL`
- Pontos (`.`) preenchem o espaço entre descrição e status
- Indentação de 7 espaços para detalhes (alinhado após os colchetes)
- Rodapé com resumo estatístico

### Exemplo Real

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

### Estrutura

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

### Regras

- Use caracteres box drawing: `┌─┐ ├─┤ └─┘ │`
- Títulos de seção precedidos por `▓▓▓` (3 blocos)
- Largura interna de 77 caracteres (79 total com bordas)
- Hierarquia com `└─` (1 nível) e indentação de 3 espaços para sub-itens
- Separadores `├─┤` entre seções
- Mantenha acentuação e caracteres especiais do português

### Exemplo Real

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
│ └─ Usado em ops-sync para checar $(DOCS_DIR)/changelog.md                  │
│ └─ Assume CLONE PARALELO em ../docs (dev local)                             │
│ └─ Nao e dependencia de build/CI                                            │
└─────────────────────────────────────────────────────────────────────────────┘
```

## Quando Usar Cada Estilo

### Use Estilo 1 (Retro Terminal) para:

- ✓ Análises de conformidade
- ✓ Checklists de validação
- ✓ Relatórios de status
- ✓ Resumos de progresso
- ✓ Auditorias e verificações

### Use Estilo 2 (Box Drawing) para:

- ✓ Evidências técnicas
- ✓ Dados estruturados por categoria
- ✓ Configurações e parâmetros
- ✓ Informações hierárquicas
- ✓ Detalhamento de componentes

## Caracteres Especiais

### Box Drawing Characters

```
┌ └ ┐ ┘ ─ │ ├ ┤ ┬ ┴ ┼
```

### Outros Símbolos

```
▓ (bloco cheio)
→ (seta)
• (bullet)
[####] [#---] [    ] (barras de progresso)
```

## Evite

- ❌ Tabelas Markdown tradicionais (`| col1 | col2 |`)
- ❌ Listas com bullet points simples para dados estruturados
- ❌ Formatação que depende de renderização HTML/MD
- ❌ Emojis (use símbolos ASCII: OK/WARN/FAIL em vez de ✓/⚠/✗)
- ❌ Largura variável (mantenha consistência em 79 caracteres)

## Compatibilidade

Estes formatos foram testados e funcionam perfeitamente em:

- ✓ Terminais Unix/Linux (xterm, gnome-terminal, kitty)
- ✓ Terminal do Windows (cmd, PowerShell, Windows Terminal)
- ✓ Editores de texto (vim, nano, emacs, VSCode)
- ✓ Visualizadores (cat, less, more, bat)
- ✓ Git diffs (terminal e interfaces web)
- ✓ Navegadores (via `<pre>` ou renderização MD)

## Encoding

Sempre use **UTF-8** para garantir a renderização correta dos caracteres box drawing e símbolos especiais.

# Workflow Protocol — Resumo

**Referência completa:** `../neomello-workflow.md`

**Última atualização:** 2025-12-25

---

## Princípios Fundamentais

1.  Código é consequência, não ponto de partida.
2.  Decisões irreversíveis devem ser externalizadas em texto antes de execução.
3.  Versionamento preserva entendimento, não apenas estado.
4.  Sistemas devem operar corretamente mesmo na ausência do criador.
5.  Clareza futura tem prioridade sobre otimização imediata.

---

## Modos Operacionais (Workflows)

### WF-01: Arquitetura de Sistema

**Quando usar:**

-  Problema estrutural ou mal definido
-  Sistema ainda não existe
-  Decisões iniciais impactam todo o ciclo de vida

**Características:**

-  Inicia sempre em markdown
-  Uso intensivo de diagramas
-  README antes de qualquer código executável
-  Definição explícita de escopo e não-escopo
-  Ausência deliberada de UI

**Artefatos esperados:**

-  `docs/ARCHITECTURE.md`
-  `docs/PHILOSOPHY.md`
-  `README.md`
-  Diagramas mermaid

**Padrões relacionados:**

-  `readme.template.md` - Template para README
-  `markdown.rules.md` - Regras de documentação

---

### WF-02: Execução Direta

**Quando usar:**

-  Arquitetura já está definida
-  Objetivo é destravar avanço
-  Necessidade de velocidade controlada

**Características:**

-  Foco em código funcional
-  Documentação mínima, porém suficiente
-  Commits frequentes e sem medo de refatoração
-  Testes focados em pontos críticos

**Artefatos esperados:**

-  Código executável
-  Scripts utilitários
-  Automações

**Padrões relacionados:**

-  `ai.rules.md` - Regras de código
-  `contract.template.sol` - Template para contratos

---

### WF-03: Consolidação e Padronização

**Quando usar:**

-  Algo funcionou e precisa ser reutilizável
-  Surgem repetições
-  Risco de fragmentação aumenta

**Características:**

-  Reorganização de pastas
-  Extração de padrões
-  Criação de templates
-  Documentação pragmática

**Artefatos esperados:**

-  Templates de repositório
-  Padrões de README
-  Workflows de CI
-  Convenções explícitas

**Padrões relacionados:**

-  Todos os arquivos em `standards/` são resultado deste workflow
-  `readme.template.md` - Template consolidado
-  `contract.template.sol` - Template consolidado

---

### WF-04: Recuperação e Continuidade

**Quando usar:**

-  Ocorre falha crítica
-  Ambiente é corrompido
-  Há perda parcial de contexto

**Características:**

-  Prioridade em preservar sentido
-  Extração manual de dados
-  Registros narrativos humanos
-  Decisão consciente sobre reintegração

**Artefatos esperados:**

-  Pasta RECOVERY
-  Arquivos .save
-  Logs manuais

**Padrões relacionados:**

-  `scripts/install.sh` - Script de recuperação
-  Documentação completa em `standards/`

---

## Perfis Operacionais

### Perfil Arquiteto

-  Define estruturas
-  Cria contratos
-  Estabelece padrões
-  Decide o que não entra

**Permissões:** Alterações estruturais, decisões irreversíveis

### Perfil Executor

-  Implementa soluções
-  Opera dentro dos padrões
-  Avança entregas

**Restrições:** Não redefinir arquitetura

### Perfil Auditor

-  Revisa decisões passadas
-  Valida coerência sistêmica
-  Remove excessos
-  Documenta falhas

### Perfil Nó Externo Simulado

-  Testa onboarding
-  Identifica fricções
-  Valida legibilidade

**Atuação:** Leitura fria, execução sem contexto prévio

---

## Regras de Transição

-  WF-01 pode transitar para WF-02 somente após contratos explícitos
-  WF-02 deve transitar para WF-03 ao detectar padrões repetidos
-  WF-04 pode ser acionado a partir de qualquer workflow
-  Nenhuma transição é automática

---

## Anti-Padrões

-  Começar por UI
-  Codar sem README
-  Decisões implícitas
-  Dependência tácita do autor
-  Confundir velocidade com pressa

---

## Observação Final

Este protocolo não busca eficiência máxima.
Busca continuidade, clareza e soberania operacional.

Quando corretamente aplicado, o sistema se sustenta, evolui e incorpora novos nós sem exigir presença constante do criador.

---

**Para detalhes completos, consulte:** `../neomello-workflow.md`


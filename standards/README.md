# Standards — NEØ Dev Workspace

Padrões e convenções para desenvolvimento seguindo o **NEØ Protocol**.

**Última atualização:** 2025-12-25

**Nota:** Estes padrões seguem o protocolo definido em `neomello-workflow.md`. Consulte
`WORKFLOW.md` para resumo rápido dos workflows.

## 🚦 Obrigatório vs Referência

Nem todo padrão cria atrito. A distinção é simples: **obrigatório** falha o CI automaticamente;
**referência** é consultado quando você precisa, sem nenhum check automático.

| Status     | O que significa                                                          |
| ---------- | ------------------------------------------------------------------------ |
| 🔴 **CI**  | Verificado automaticamente em todo push/PR. Violação bloqueia o merge.   |
| 🟡 **IA**  | Lido pelo Cursor automaticamente via `.cursorrules`. Sem bloqueio de CI. |
| ⚪ **REF** | Consulta manual. Sem automação.                                          |

### O que o CI verifica

| Workflow                | Ferramenta        | Trigger                                                   | O que trava                                              |
| ----------------------- | ----------------- | --------------------------------------------------------- | -------------------------------------------------------- |
| `ci.yml`                | markdownlint      | push / PR → `main`                                        | Regras de `.markdownlint.json` em todos os `*.md`        |
| `code-quality.yml`      | Prettier          | push / PR → `main`                                        | Formatação de `*.md`, `*.json`, `*.yml`, `*.yaml`        |
| `security.yml`          | Gitleaks          | push / PR → `main` + toda segunda-feira (00:00 UTC)       | Segredos commitados no histórico                         |
| `dependency-review.yml` | Dependency Review | PR → `main` (apenas `package.json` / `package-lock.json`) | Dependências com vulnerabilidade ≥ high, licença não-MIT |

---

## 📋 Arquivos de Padrões

### 🔴 CI — Obrigatório (falha o build se violado)

- **`markdown.rules.md`** `[CI]` — Explica as regras do `.markdownlint.json` ativo (MD001, MD003,
  MD007, MD030…). Qualquer `*.md` que viole essas regras falha o workflow `ci.yml`.
- **`.prettierrc.json`** (raiz do repo) `[CI]` — Configuração canônica do Prettier. Arquivos `*.md`,
  `*.json`, `*.yml` e `*.yaml` fora do padrão falham o workflow `code-quality.yml`.

### 🟡 IA — Lido automaticamente pelo Cursor (sem bloqueio de CI)

- **`ai.rules.md`** `[IA]` — Instruções de comportamento para o Cursor/GPT. Referenciado em
  `.cursorrules`; aplica-se a toda sessão de IA no workspace.
- **`HOW_CURSOR_READS.md`** `[IA]` — Explica como o Cursor processa e prioriza os padrões.

### ⚪ REF — Referência (consultar quando necessário, sem automação)

#### Documentação e Markdown

- **`markdown.ascii-style.md`** — Padrão visual ASCII retro/terminal (box drawing). Estético, não
  verificado por lint.
- **`readme.template.md`** — Template base para READMEs de projetos.
- **`readme.signature.md`** — Assinatura completa para projetos e READMEs.
- **`readme.signature.contracts.md`** — Assinatura simples para contratos e tokens.
- **`svg.parametric.playbook.md`** — Método para criar diagramas SVG parametrizáveis.
- **`contract.template.sol`** — Template base para contratos Solidity.

#### Shell e Terminal

- **`zshrc.rules.md`** — Regras e padrões para configuração do shell.
- **`zshrc.analysis.md`** — Análise e recomendações para `.zshrc`.

#### Outros

- **`extensions.txt`** — Lista de extensões Cursor/VS Code recomendadas.
- **`links.md`** — Links úteis e referências externas.
- **`WORKFLOW.md`** — Resumo do workflow protocol (referência: `neomello-workflow.md`).

## 🎯 Quando Usar Cada Assinatura

### `readme.signature.md` — Projetos e READMEs

**Use para:**

- READMEs de projetos
- Documentação de APIs
- Repositórios públicos
- Qualquer projeto que precise de contato e links sociais

**Características:**

- Badges com links sociais (Twitter, Instagram, Ethereum)
- Email de contato
- Citação filosófica
- Visual rico e profissional

**Exemplo de uso:**

```markdown
## Contact

[neo@neoprotocol.space](mailto:neo@neoprotocol.space) ...
```

### `readme.signature.contracts.md` — Contratos e Tokens

**Use para:**

- Comentários em contratos Solidity (`@author`)
- Documentação técnica de tokens
- Arquivos de código que precisam de assinatura simples
- Contextos onde badges/links não são apropriados

**Características:**

- Texto simples
- Autor e padrões de trabalho
- Sem formatação HTML/Markdown complexa

**Exemplo de uso:**

```solidity
/**
 * @dev Token ERC20 com funcionalidades customizadas
 * @author MELLO // POST-HUMAN
 */
contract MyToken is ERC20 {
  // ...
}
```

**⚠️ Importante:**

- Use `MELLO` (sem Ø) em comentários Solidity para compatibilidade
- Não use `@title` específico - deixe genérico ou remova
- Use apenas `@dev` e `@author`

## 📝 Como Aplicar

### Em READMEs de Projetos

1.  Consulte `readme.template.md` para estrutura base
2.  Adicione a assinatura de `readme.signature.md` no final
3.  Ajuste conforme necessário
4.  Se houver diagrama visual importante, consulte `svg.parametric.playbook.md`

### Em Contratos Solidity

1.  Use `@author MELLO // POST-HUMAN` (sem Ø) nos comentários
2.  Use apenas `@dev` para descrição - não use `@title` específico
3.  Consulte `contract.template.sol` para template base
4.  Consulte `readme.signature.contracts.md` para padrões completos

### Via Cursor/IA

O Cursor lê automaticamente:

- `.cursorrules` (referencia os padrões)
- `standards/ai.rules.md` (instruções para IA)

A IA deve consultar os arquivos de assinatura quando criar novos READMEs ou contratos.

## 🔄 Manutenção

Ao atualizar padrões:

1.  Edite o arquivo em `standards/`
2.  Atualize referências em `.cursorrules` se necessário
3.  Commit com mensagem descritiva
4.  Documente mudanças significativas

---

**Importante:** Estes padrões são autoritativos. Inconsistência não é permitida.

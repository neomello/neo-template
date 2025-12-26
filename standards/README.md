# Standards — NEØ Dev Workspace

Padrões e convenções para desenvolvimento seguindo o **NEØ Protocol**.

**Última atualização:** 2025-12-25

**Nota:** Estes padrões seguem o protocolo definido em `neomello-workflow.md`. Consulte `WORKFLOW.md` para resumo rápido dos workflows.

## 📋 Arquivos de Padrões

### Documentação e Markdown

-  **`markdown.rules.md`** - Regras de formatação Markdown (MD030, MD032, MD040, etc)
-  **`ai.rules.md`** - Regras para uso de IA e comportamento do Cursor
-  **`readme.template.md`** - Template base para READMEs de projetos
-  **`readme.signature.md`** - Assinatura completa para projetos e READMEs
-  **`readme.signature.contracts.md`** - Assinatura simples para contratos e tokens
-  **`contract.template.sol`** - Template base para contratos Solidity

### Shell e Terminal

-  **`zshrc.rules.md`** - Regras e padrões para configuração do shell
-  **`zshrc.analysis.md`** - Análise e recomendações para .zshrc

### Outros

-  **`extensions.txt`** - Lista de extensões Cursor/VS Code
-  **`links.md`** - Links úteis e referências
-  **`HOW_CURSOR_READS.md`** - Como o Cursor lê os padrões
-  **`WORKFLOW.md`** - Resumo do workflow protocol (referência: `neomello-workflow.md`)

## 🎯 Quando Usar Cada Assinatura

### `readme.signature.md` — Projetos e READMEs

**Use para:**

-  READMEs de projetos
-  Documentação de APIs
-  Repositórios públicos
-  Qualquer projeto que precise de contato e links sociais

**Características:**

-  Badges com links sociais (Twitter, Instagram, Ethereum)
-  Email de contato
-  Citação filosófica
-  Visual rico e profissional

**Exemplo de uso:**

```markdown
## Contact
[neo@neoprotocol.space](mailto:neo@neoprotocol.space)
...
```

### `readme.signature.contracts.md` — Contratos e Tokens

**Use para:**

-  Comentários em contratos Solidity (`@author`)
-  Documentação técnica de tokens
-  Arquivos de código que precisam de assinatura simples
-  Contextos onde badges/links não são apropriados

**Características:**

-  Texto simples
-  Autor e padrões de trabalho
-  Sem formatação HTML/Markdown complexa

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

-  Use `MELLO` (sem Ø) em comentários Solidity para compatibilidade
-  Não use `@title` específico - deixe genérico ou remova
-  Use apenas `@dev` e `@author`

## 📝 Como Aplicar

### Em READMEs de Projetos

1.  Consulte `readme.template.md` para estrutura base
2.  Adicione a assinatura de `readme.signature.md` no final
3.  Ajuste conforme necessário

### Em Contratos Solidity

1.  Use `@author MELLO // POST-HUMAN` (sem Ø) nos comentários
2.  Use apenas `@dev` para descrição - não use `@title` específico
3.  Consulte `contract.template.sol` para template base
4.  Consulte `readme.signature.contracts.md` para padrões completos

### Via Cursor/IA

O Cursor lê automaticamente:

-  `.cursorrules` (referencia os padrões)
-  `standards/ai.rules.md` (instruções para IA)

A IA deve consultar os arquivos de assinatura quando criar novos READMEs ou contratos.

## 🔄 Manutenção

Ao atualizar padrões:

1.  Edite o arquivo em `standards/`
2.  Atualize referências em `.cursorrules` se necessário
3.  Commit com mensagem descritiva
4.  Documente mudanças significativas

---

**Importante:** Estes padrões são autoritativos. Inconsistência não é permitida.

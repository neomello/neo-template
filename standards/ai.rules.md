<!-- ai rules -->

**Última atualização:** 2025-12-25

## Regras para IAs e Assistentes

### Como Funciona

O Cursor lê automaticamente o `.cursorrules` na raiz do projeto. Este arquivo referencia os padrões em `standards/`.

### Quando Criar ou Editar Arquivos

1.  **SEMPRE** siga os padrões de Markdown (linha em branco após headers)
2.  **SEMPRE** use 2 espaços para indentação
3.  **SEMPRE** remova trailing whitespace
4.  **SEMPRE** adicione newline final
5.  **SEMPRE** use LF line endings (Unix)

### Padrões de Código

-  **Indentação**: 2 espaços (não tabs)
-  **Encoding**: UTF-8
-  **Line endings**: LF (Unix)
-  **Trailing whitespace**: Remover
-  **Final newline**: Sempre adicionar

### Padrões de Markdown

**CRITICAL**: Linha em branco após qualquer header (###, ##, #)

```markdown
### ✅ Correto

Conteúdo aqui.

### ❌ Incorreto
Conteúdo aqui.
```

### Assinaturas

**Para projetos e READMEs** (use `standards/readme.signature.md`):

```markdown
## Contact
[neo@neoprotocol.space](mailto:neo@neoprotocol.space)

</div>

<div align="center">
  <a href="https://x.com/node_mello">
    <img src="https://img.shields.io/badge/-@node_mello-ff008e?style=flat-square&logo=twitter&logoColor=white" />
  </a>
  <a href="https://www.instagram.com/neoprotocol.eth/">
    <img src="https://img.shields.io/badge/-@neoprotocol.eth-ff008e?style=flat-square&logo=instagram&logoColor=white" />
  </a>
  <a href="https://etherscan.io/">
    <img src="https://img.shields.io/badge/-neomello.eth-ff008e?style=flat-square&logo=ethereum&logoColor=white" />
  </a>
</div>

<div align="center">
  <i>"Expand until silence becomes structure."</i>
</div>
```

**Para contratos e tokens** (use `standards/readme.signature.contracts.md`):

```solidity
/**
 * @dev [Descrição breve do contrato]
 * @author MELLO // POST-HUMAN
 */
```

**⚠️ Regras importantes:**

-  Use `MELLO` (sem Ø) em código Solidity para compatibilidade
-  Não use `@title` específico - deixe genérico ou remova
-  Use apenas `@dev` e `@author` nos comentários
-  Consulte `standards/contract.template.sol` para template base

### Referências

-  Ver `standards/markdown.rules.md` para regras completas de Markdown
-  Ver `standards/README.md` para padrões de trabalho
-  Ver `.markdown-style-guide.md` para guia completo

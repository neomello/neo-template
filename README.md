# NEØ Template

Template base para novos projetos seguindo os padrões **NEØ Protocol**.

**Última atualização:** 2025-12-25

---

## Uso

### Criar Novo Projeto a partir deste Template

1.  Use este repositório como template no GitHub
2.  Ou clone e renomeie:

```bash
git clone https://github.com/neomello/neo-template.git meu-projeto
cd meu-projeto
rm -rf .git
git init
```

### Aplicar Padrões

Este template já inclui todos os padrões globais em `standards/`:

-  **Markdown** - Regras de formatação
-  **IA/Cursor** - Regras para assistentes
-  **Templates** - README e contratos Solidity
-  **Assinaturas** - Padrões de assinatura para projetos e contratos

O Cursor aplica automaticamente via `.cursorrules`.

---

## Estrutura

```text
projeto/
├── .cursorrules              # Regras do Cursor (lê automaticamente)
├── standards/                # Padrões globais NEØ
│   ├── README.md             # Índice completo
│   ├── WORKFLOW.md           # Resumo do workflow protocol
│   ├── ai.rules.md           # Regras para IA
│   ├── markdown.rules.md     # Regras Markdown
│   ├── readme.template.md    # Template README
│   ├── readme.signature.md   # Assinatura projetos
│   ├── readme.signature.contracts.md # Assinatura contratos
│   ├── contract.template.sol # Template Solidity
│   └── ...
└── README.md                 # Este arquivo
```

---

## Padrões Incluídos

### Para READMEs

1.  Consulte `standards/readme.template.md` para estrutura
2.  Adicione assinatura de `standards/readme.signature.md` no final
3.  Siga regras em `standards/markdown.rules.md`

### Para Contratos Solidity

1.  Use `standards/contract.template.sol` como base
2.  Siga padrão em `standards/readme.signature.contracts.md`
3.  Use `MELLO` (sem Ø) em comentários para compatibilidade

### Via Cursor/IA

O Cursor lê automaticamente `.cursorrules` que referencia todos os padrões.

A IA seguirá automaticamente:

-  Regras de Markdown
-  Padrões de código
-  Templates e assinaturas

---

## Workflow Protocol

Este template segue o **NEØ Workflow Protocol**. Consulte:

-  **Resumo:** `standards/WORKFLOW.md`
-  **Completo:** <https://github.com/neomello/neo-dev/blob/main/neomello-workflow.md>

---

## Documentação Completa

Para documentação completa dos padrões, consulte:

-  **Workspace completo:** <https://github.com/neomello/neo-dev>
-  **Padrões:** `standards/README.md`
-  **Como Cursor lê:** `standards/HOW_CURSOR_READS.md`

---

## Próximos Passos

1.  Renomeie este projeto
2.  Atualize o README com informações do seu projeto
3.  Use os templates em `standards/` para criar arquivos
4.  O Cursor aplicará automaticamente os padrões

---

## Contact

[neo@neoprotocol.space](mailto:neo@neoprotocol.space)

</div>

<div align="center">
  <a href="https://x.com/node_mello">
    <img src="https://img.shields.io/badge/-@node_mello-ff008e?style=flat-square&logo=twitter&logoColor=white" alt="Twitter @node_mello" />
  </a>
  <a href="https://www.instagram.com/neoprotocol.eth/">
    <img src="https://img.shields.io/badge/-@neoprotocol.eth-ff008e?style=flat-square&logo=instagram&logoColor=white" alt="Instagram @neoprotocol.eth" />
  </a>
  <a href="https://etherscan.io/">
    <img src="https://img.shields.io/badge/-neomello.eth-ff008e?style=flat-square&logo=ethereum&logoColor=white" alt="Ethereum neomello.eth" />
  </a>
</div>

<div align="center">
  <i>"Expand until silence becomes structure."</i>
</div>

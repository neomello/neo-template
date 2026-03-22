<!-- markdown rules -->

**Última atualização:** 2025-12-25

## Regras de Markdown - NEØ Dev

### Regra Principal: Linha em Branco Após Headers

**SEMPRE adicione uma linha em branco após qualquer título** (###, ##, #) antes de iniciar o conteúdo.

#### ✅ Correto

```markdown
### 1. **Título da Seção** ✅ STATUS

-  **Campo**: Valor
-  **Outro campo**: Outro valor
```

#### ❌ Incorreto

```markdown
### 1. **Título da Seção** ✅ STATUS
-  **Campo**: Valor
-  **Outro campo**: Outro valor
```

### Padrões de Formatação

#### Títulos

-  Use `#` para título principal (H1)
-  Use `##` para seções principais (H2)
-  Use `###` para subseções (H3)
-  Use `####` para sub-subseções (H4)

**Sempre adicione uma linha em branco após o título antes do conteúdo.**

#### Listas

-  Use `-` para listas não ordenadas
-  Use `1.`, `2.`, etc. para listas ordenadas
-  Indente com 2 espaços para subitens
-  **MD030**: Use **2 espaços** após o marcador da lista (não 1)
-  **MD032**: Listas devem ser cercadas por linhas em branco (antes e depois)

##### ✅ Correto (MD030)

```markdown
-  Item da lista (2 espaços após o `-`)
1.  Item ordenado (2 espaços após o `1.`)
```

##### ❌ Incorreto (MD030)

```markdown
- Item da lista (1 espaço - ERRADO)
1. Item ordenado (1 espaço - ERRADO)
```

##### ✅ Correto (MD032)

```markdown
Texto antes da lista.

-  Item 1
-  Item 2

Texto depois da lista.
```

##### ❌ Incorreto (MD032)

```markdown
Texto antes da lista.
-  Item 1
-  Item 2
Texto depois da lista.
```

#### Código

-  Use \`backticks\` para código inline
-  Use blocos de código com \`\`\` para blocos
-  **MD040**: Sempre especifique a linguagem nos blocos de código (obrigatório)

##### ✅ Correto (MD040)

```markdown
\`\`\`bash
echo "Hello World"
\`\`\`

\`\`\`text
Estrutura de diretórios
\`\`\`

\`\`\`json
{"key": "value"}
\`\`\`
```

##### ❌ Incorreto (MD040)

```markdown
\`\`\`
echo "Hello World"
\`\`\`

\`\`\`
Estrutura de diretórios
\`\`\`
```

#### Ênfase

-  Use `**negrito**` para destaque
-  Use `*itálico*` para ênfase suave
-  Use `~~riscado~~` para texto descontinuado

##### Emojis e Unicode

NUNCA use emojis (😀, ✅, ❌, etc.) em documentação ou código.

Use caracteres Unicode quando necessário para simbolismo visual:

⟁ ⟠ ⧉ ⧇ ⧖ ⧗ ⍟
◬ ◭ ◮ ◯ ⨀ ⨂ ⨷
◱ ◲ ◳ ◴ ◵ ◶ ◷ ⦿ ꙮ

### Configurações do Projeto

Este projeto usa:

-  **EditorConfig** (`.editorconfig`) - Configurações do editor
-  **Prettier** (`.prettierrc.json`) - Formatação automática
-  **Markdownlint** (`.markdownlint.json`) - Validação de estilo

Ver `standards/markdown.ascii-style.md` para guia de estilo visual ASCII.

# Como o Cursor Lê os Padrões

## 🔍 Como Funciona

### 1. Leitura Automática

O Cursor **lê automaticamente** o arquivo `.cursorrules` na raiz do projeto quando você abre o workspace.

**Não precisa fazer nada** - acontece automaticamente.

### 2. O que o Cursor Faz

Quando você interage com a IA no Cursor:

1. O Cursor carrega o `.cursorrules`
2. A IA recebe essas regras como contexto
3. A IA segue as regras ao criar/editar arquivos
4. Se o `.cursorrules` referencia arquivos em `standards/`, a IA pode consultá-los quando necessário

### 3. Estrutura Atual

```
neo-dev/
├── .cursorrules          ← Cursor lê automaticamente
└── standards/            ← Referenciado pelo .cursorrules
    ├── ai.rules.md       ← Regras específicas para IAs
    ├── markdown.rules.md ← Regras de Markdown
    └── ...
```

## 📋 O que Está no .cursorrules

O `.cursorrules` contém:

- ✅ Regras básicas (indentação, encoding, etc)
- ✅ Regras de Markdown (linha em branco após headers)
- ✅ Referências para arquivos em `standards/`
- ✅ Assinatura do autor

## 🎯 Como Garantir que a IA Veja os Padrões

### Opção 1: Tudo no .cursorrules (Atual)

✅ **Vantagem**: Tudo em um lugar, fácil de ler
✅ **Funciona**: Cursor lê automaticamente

### Opção 2: Referenciar standards/ (Recomendado)

✅ **Vantagem**: Organizado, fácil de manter
✅ **Como funciona**: `.cursorrules` referencia, IA consulta quando necessário

**Exemplo no .cursorrules:**
```markdown
## Referências

- **Regras de Markdown**: `standards/markdown.rules.md` (CONSULTE SEMPRE)
```

## 🔧 Melhorias Feitas

1. ✅ Preenchi `standards/ai.rules.md` com regras para IAs
2. ✅ Preenchi `standards/markdown.rules.md` com regras completas
3. ✅ Adicionei seção "Como o Cursor Lê" no `.cursorrules`
4. ✅ Referências claras para arquivos em `standards/`

## 🧪 Teste

Para verificar se está funcionando:

1. Peça para a IA criar um arquivo `.md`
2. Verifique se tem linha em branco após headers
3. Verifique se usa 2 espaços de indentação
4. Verifique se remove trailing whitespace

Se seguir os padrões = ✅ funcionando!

## 📚 Arquivos Importantes

- `.cursorrules` - Lido automaticamente pelo Cursor
- `standards/ai.rules.md` - Regras específicas para assistentes
- `standards/markdown.rules.md` - Regras de Markdown (CONSULTE SEMPRE)
- `.markdown-style-guide.md` - Guia completo de estilo

---

**Nota**: O Cursor não lê arquivos em `standards/` automaticamente. Eles são referenciados pelo `.cursorrules` e a IA os consulta quando necessário usando as ferramentas de leitura de arquivos.


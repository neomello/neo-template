# Contribuindo para este projeto

Obrigado por considerar contribuir! Este documento fornece diretrizes e padrões para contribuições.

## Código de Conduta

Este projeto segue os padrões NEØ de desenvolvimento. Por favor, mantenha um ambiente respeitoso e profissional em todas as interações.

## Processo de Desenvolvimento

Este projeto usa um modelo de branching baseado em `main` alinhado com práticas DevSecOps modernas.

- Todas as novas features e correções são mergeadas na branch `main` via Pull Request
- Use branches descritivas para features (`feature/nome-da-feature`)
- Use branches para experimentos (`experiment/nome`)

## Como Contribuir

### 1. Fork e Clone

1. Faça fork do repositório
2. Clone seu fork
3. Adicione o upstream: `git remote add upstream <url-do-repo-original>`

### 2. Criar Branch

```bash
git checkout -b feature/nome-da-feature
# ou
git checkout -b fix/descricao-do-bug
```

### 3. Desenvolvimento

- **Sempre** siga os padrões de código estabelecidos
- **Sempre** adicione testes se estiver adicionando nova funcionalidade
- **Nunca** commite credenciais ou chaves privadas
- **Sempre** verifique segurança antes de commitar

### 4. Commit

- Use mensagens de commit descritivas
- Siga o padrão: `tipo: descrição breve`
- Exemplos:
  - `feat: adiciona nova funcionalidade`
  - `fix: corrige bug específico`
  - `docs: atualiza documentação`

### 5. Pull Request

1. Certifique-se de que todos os testes passam
2. Atualize a documentação se necessário
3. Descreva claramente as mudanças no PR
4. Referencie issues relacionadas se aplicável

## Padrões de Código

### Formatação

- Use 2 espaços para indentação (conforme `.editorconfig`)
- Use 4 espaços para Python/Solidity
- **SEMPRE** adicione linha em branco após headers Markdown
- Remova trailing whitespace
- Adicione newline final

### Segurança

- **NUNCA** commite arquivos `.env`, `.key`, `.secret`
- **NUNCA** exponha chaves privadas ou credenciais
- **SEMPRE** use variáveis de ambiente para configurações sensíveis
- **SEMPRE** verifique segurança antes de commitar

### Blockchain/Solidity/IA

- **Contratos Solidity**: Sempre mantenha backups antes de modificar
- **Chaves Privadas**: NUNCA armazene em código ou arquivos versionados
- **Modelos de IA**: Proteja arquivos de modelo grandes
- **Scripts de Deploy**: Verifique sempre antes de executar em produção

## Estrutura do Projeto

⚠️ **ESTRUTURA PROTEGIDA POR ARQUITETURA NEØ**

Consulte `.cursorrules` para estrutura protegida do projeto.

**NUNCA** modifique pastas ou renomeie arquivos sem autorização.

## Verificações Antes de Commitar

Execute estas verificações antes de fazer commit:

```bash
# Verificar status do git
git status

# Verificar mudanças
git diff

# Verificar segurança (se disponível)
make check-security
```

## Checklist de Pull Request

- [ ] Código segue os padrões estabelecidos
- [ ] Testes passam (se aplicável)
- [ ] Documentação atualizada
- [ ] Nenhuma credencial ou chave privada exposta
- [ ] Mensagens de commit descritivas
- [ ] Formatação correta (linha em branco após headers)

## Reportar Problemas

Use GitHub Issues para reportar bugs ou sugerir features:

- Use títulos descritivos
- Forneça passos para reproduzir (se bug)
- Inclua informações do ambiente quando relevante
- Seja claro e objetivo

## Perguntas?

Se tiver dúvidas sobre como contribuir, abra uma issue ou entre em contato com os mantenedores.

## Licença

Ao contribuir, você concorda que suas contribuições serão licenciadas sob a mesma licença do projeto.

---

**Author:** MELLØ // NEØ DEV

Este projeto segue padrões NEØ de desenvolvimento.
Mudanças são permitidas, inconsistência não é.


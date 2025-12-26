<!-- zshrc rules -->

## Padrões para .zshrc

> **⚠️ IMPORTANTE**: Nunca versionar API keys ou secrets no .zshrc!
> Use arquivo separado `~/.zshrc.secrets` (não versionado).

### .zshrc.secrets - Organização com Comentários

O arquivo `~/.zshrc.secrets` **pode e deve** usar comentários para organização:

```bash
# =====================================================
# .zshrc.secrets - API Keys e Tokens
# =====================================================
# ⚠️ CRÍTICO: NUNCA versione este arquivo no Git!
# Adicione ao .gitignore: echo ".zshrc.secrets" >> ~/.gitignore
# =====================================================

# ===================================
# THIRDWEB
# ===================================
# Descrição: API key para serviços thirdweb
# Criado em: 2025-12-26
export THIRDWEB_SECRET_KEY="..."

# ===================================
# OPENAI
# ===================================
# Descrição: API key para OpenAI (ChatGPT, etc)
# Criado em: 2025-12-26
# export OPENAI_API_KEY="sk-..."

# ===================================
# GITHUB
# ===================================
# Descrição: Personal Access Token para GitHub
# Criado em: 2025-12-26
# export GITHUB_PAT="ghp_..."
```

**Benefícios dos comentários:**

-  Organização por seções (separadores visuais)
-  Documentação de cada API key (descrição, data)
-  Avisos de segurança (nunca versionar)
-  Facilita manutenção e identificação de keys

### Estrutura Recomendada do .zshrc

```bash
# 1. Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# 2. Gerenciadores de versão (nvm, pyenv, etc)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# 3. Aliases úteis
alias python="python3"
alias ll="ls -la"

```

### Boas Práticas

-  **Comentários**: Sempre comente seções importantes
-  **Organização**: Agrupe por categoria (brew, nvm, aliases, paths)
-  **Versionamento**: Mantenha backup do .zshrc
-  **Aliases**: Use nomes descritivos e curtos
-  **Paths**: Adicione paths customizados no final

### Aliases Úteis para Dev

```bash
# Navegação
alias dev='cd ~/CODIGOS/neo-dev'
alias projects='cd ~/CODIGOS/neo-dev/projects'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

# Docker
alias dcu='docker-compose up'
alias dcd='docker-compose down'
```

### Funções Úteis

```bash
# Adicione funções personalizadas conforme necessário
# Exemplo:
# my-project() {
#   cd ~/CODIGOS/meu-projeto
#   npm run "$@"
# }
```


# Análise do .zshrc Atual

## ✅ O que está bom

1.  **Homebrew** - Configurado corretamente
2.  **Conda** - Inicialização correta
3.  **Docker** - Completions configuradas
4.  **Pyenv** - Configurado
5.  **Bun** - Instalado e configurado
6.  **pnpm** - Configurado corretamente
7.  **Aliases básicos** - `python`, `invokeai`, `sherlock`

## ⚠️ Problemas encontrados

### 1. NVM Duplicado

```bash
# Aparece 2x no arquivo:
# Linha ~18: export NVM_DIR + [ -s "$NVM_DIR/nvm.sh" ]
# Linha ~33: export NVM_DIR + [ -s "/opt/homebrew/opt/nvm/nvm.sh" ]
```

### 2. 🔴 CRÍTICO: API Keys Expostas

```bash
# API keys em texto plano no .zshrc:
export ANTHROPIC_API_KEY=sk-ant-api03-...
export OPENROUTER_API_KEY=sk-or-v1-...
export OPENAI_API_KEY='sk-proj-...'
export GITHUB_PAT="ghp_..."
```

**RISCO**: Se o .zshrc for versionado ou compartilhado, as keys ficam expostas!

### 3. Falta de Organização

-  Sem comentários de seção
-  Sem agrupamento lógico
-  Configurações misturadas

### 4. Falta de Aliases Úteis

-  Sem aliases para git
-  Sem aliases para navegação
-  Sem funções personalizadas para projetos

## 📋 Sugestões de Melhoria

### 1. Mover API Keys para arquivo separado

Criar `~/.zshrc.secrets` (não versionar!):

```bash
# ~/.zshrc.secrets
export ANTHROPIC_API_KEY="..."
export OPENROUTER_API_KEY="..."
export OPENAI_API_KEY="..."
export GITHUB_PAT="..."
```

E no `.zshrc`:

```bash
# Carregar secrets (se existir)
[ -f ~/.zshrc.secrets ] && source ~/.zshrc.secrets
```

### 2. Remover duplicação do NVM

Manter apenas uma versão (a do Homebrew é melhor):

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

### 3. Adicionar aliases úteis

```bash
# Navegação
alias dev='cd ~/CODIGOS/neo-dev'
alias projects='cd ~/CODIGOS/neo-dev/projects'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gb='git branch'

# Docker
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dce='docker-compose exec'
```

### 4. Organizar por seções

```bash
# ============================================
# Homebrew
# ============================================
eval "$(/opt/homebrew/bin/brew shellenv)"

# ============================================
# Gerenciadores de Versão
# ============================================
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/nettomello/.bun/_bun" ] && source "/Users/nettomello/.bun/_bun"

# ============================================
# Aliases
# ============================================
alias python="python3"
alias ll="ls -la"
# ... outros aliases

# ============================================
# Paths Customizados
# ============================================
export PATH="$PATH:/Applications/010 Editor.app/Contents/CmdLine"
export PATH="/Users/nettomello/.local/bin:$PATH"

# ============================================
# Configurações de Ferramentas
# ============================================
export OLLAMA_MODELS=/Users/nettomello/ollama
export CRUSH_CONFIG="/Users/nettomello/CODIGOS/config.json"

# ============================================
# Secrets (carregar de arquivo separado)
# ============================================
[ -f ~/.zshrc.secrets ] && source ~/.zshrc.secrets
```

## 🎯 Prioridades

1.  **URGENTE**: Mover API keys para arquivo separado
2.  **IMPORTANTE**: Remover duplicação do NVM
3.  **ÚTIL**: Adicionar aliases e organização


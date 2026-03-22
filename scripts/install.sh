#!/usr/bin/env bash
# NEO Dev Workspace - Install Script
# Sets up the development environment from scratch.
#
# Usage:
#   chmod +x scripts/install.sh
#   ./scripts/install.sh

set -euo pipefail

echo "NEO Dev Workspace — setup iniciado"

# ----------------------------------------------------
# 1. Verificar dependências básicas
# ----------------------------------------------------

command -v git  >/dev/null 2>&1 || { echo "git não encontrado. Instale antes de continuar."; exit 1; }
command -v node >/dev/null 2>&1 || echo "node não encontrado. Instale via nvm se necessário."
command -v npm  >/dev/null 2>&1 || echo "npm não encontrado. Instale via nvm se necessário."

# ----------------------------------------------------
# 2. Configurar git local (opcional)
# ----------------------------------------------------

# git config core.autocrlf false
# git config pull.rebase false

# ----------------------------------------------------
# 3. Instalar dependências do projeto (se package.json existir)
# ----------------------------------------------------

if [ -f "package.json" ]; then
  echo "Instalando dependências npm..."
  npm install
fi

# ----------------------------------------------------
# 4. Configurar secrets externos (não versionados)
# ----------------------------------------------------

if [ ! -f "$HOME/.zshrc.secrets" ]; then
  echo "Criando arquivo de secrets em ~/.zshrc.secrets ..."
  cat > "$HOME/.zshrc.secrets" <<'EOF'
# =====================================================
# .zshrc.secrets - API Keys e Tokens
# =====================================================
# CRITICO: NUNCA versione este arquivo no Git!
# =====================================================

# export OPENAI_API_KEY=""
# export GITHUB_PAT=""
EOF
  echo "Edite ~/.zshrc.secrets com suas chaves."
fi

# ----------------------------------------------------
# 5. Finalizar
# ----------------------------------------------------

echo ""
echo "Setup concluído."
echo "Próximos passos:"
echo "  1. Edite ~/.zshrc.secrets com suas API keys"
echo "  2. Execute: source ~/.zshrc"
echo "  3. Consulte standards/ para convenções do projeto"

#!/bin/bash

# Script para corrigir vulnerabilidades detectadas
# Baseado em VULNERABILITIES.md
#
# NOTA: Este template não possui dependências próprias.
# Use este script quando criar um projeto a partir deste template.

set -e

if [ ! -f "package.json" ]; then
  echo "Erro: package.json não encontrado."
  echo "Este template não possui dependências. Crie um package.json primeiro."
  exit 1
fi

echo "=== Correção de Vulnerabilidades ==="
echo ""

# 1. Corrigir vulnerabilidades moderadas e baixas (sem breaking changes)
echo "1. Corrigindo vulnerabilidades moderadas e baixas..."
npm audit fix

echo ""
echo "2. Verificando vulnerabilidades restantes..."
npm audit --audit-level=moderate

echo ""
echo "=== Próximos Passos ==="
echo ""
echo "Se houver vulnerabilidades críticas que requerem breaking changes:"
echo "  1. Revise o changelog das dependências afetadas"
echo "  2. Atualize manualmente as dependências vulneráveis"
echo "  3. Execute: npm audit --audit-level=moderate"

#!/bin/bash

echo ""
echo "============================================================"
echo "🚀 GERADOR EBOOK v1.0.0 - LOCAL DEVELOPMENT"
echo "============================================================"
echo ""

# Verificar Python
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 não encontrado!"
    echo ""
    echo "📥 Instale Python3:"
    echo "   • Via Homebrew: brew install python3"
    echo "   • Download: https://python.org"
    echo ""
    echo "Pressione ENTER para sair..."
    read
    exit 1
fi

echo "✅ Python3 encontrado!"
echo ""
echo "🌐 Iniciando servidor local..."
echo "📍 URL: http://localhost:3000"
echo ""
echo "⚠️  IMPORTANTE:"
echo "   • Este Terminal deve permanecer aberto"
echo "   • Pressione Ctrl+C para parar"
echo "   • Seu navegador abrirá automaticamente"
echo ""
echo "============================================================"

# Mudar para diretório do script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$DIR/servidor_local"

# Rodar servidor
python3 servidor.py

echo ""
echo "🛑 Servidor parado."
echo "Pressione ENTER para fechar..."
read
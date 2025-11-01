@echo off
title Gerador eBook v1.0.0 - LOCAL

echo.
echo ================================================================
echo 🚀 GERADOR EBOOK v1.0.0 - LOCAL DEVELOPMENT
echo ================================================================
echo.
echo 🔧 Verificando Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python não encontrado!
    echo.
    echo 📥 Instale Python em: https://python.org
    echo    ✅ Marque "Add to PATH" durante instalação
    echo.
    pause
    exit /b 1
)

echo ✅ Python encontrado!
echo.
echo 🌐 Iniciando servidor local...
echo 📍 URL: http://localhost:3000
echo.
echo ⚠️  IMPORTANTE:
echo    - Mantenha esta janela aberta
echo    - Pressione Ctrl+C para parar
echo    - Seu navegador abrirá automaticamente
echo.
echo ================================================================

cd /d "%~dp0"
cd servidor_local

python servidor.py

echo.
echo 🛑 Servidor parado.
echo Pressione qualquer tecla para sair...
pause >nul
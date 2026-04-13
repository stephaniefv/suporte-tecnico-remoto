@echo off
title Coletor N1 - Versao Final
echo Gerando diagnostico...

:: Forca o caminho do OneDrive direto
set "arquivo=C:\Users\Stephanie Ferreira\OneDrive\Desktop\diagnostico-suporte.txt"

echo === DIAGNOSTICO SUPORTE N1 === > "%arquivo%"
echo Data: %date% %time% >> "%arquivo%"
echo Usuario: %USERNAME% >> "%arquivo%"
echo Maquina: %COMPUTERNAME% >> "%arquivo%"
echo. >> "%arquivo%"

echo --- IP E REDE --- >> "%arquivo%"
ipconfig >> "%arquivo%"
echo. >> "%arquivo%"

echo --- PING GOOGLE --- >> "%arquivo%"
ping 8.8.8.8 -n 2 >> "%arquivo%"
echo. >> "%arquivo%"

echo --- DNS --- >> "%arquivo%"
nslookup google.com >> "%arquivo%"
echo. >> "%arquivo%"

echo --- ESPACO DISCO C: --- >> "%arquivo%"
dir C:\ >> "%arquivo%"
echo. >> "%arquivo%"

echo --- PROCESSOS ATIVOS --- >> "%arquivo%"
tasklist >> "%arquivo%"

echo.
echo ========================================
echo CONCLUIDO! Arquivo salvo em:
echo %arquivo%
echo ========================================
echo.
pause
@echo off
cd "C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos"
for /f "delims=" %%x in (Servidor.txt) do set "Servidor=%%x"
echo %Servidor%
for /f "delims=" %%x in (SelectBase.txt) do set "base=%%x"
echo %base%
SQLCMD -U SA -P senha -S %Servidor% -d %base% -i "C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos\IntegacaoSispeq.txt"
cmd
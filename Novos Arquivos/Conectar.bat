@echo off
cd "C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos"
for /f "delims=" %%x in (Servidor.txt) do set "Servidor=%%x"
echo %Servidor%
SQLCMD -U SA -P senha -S %Servidor% -i "C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos\sql" >"C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos/bases"
@echo off
tskill ServerServiceGUI
tskill Suprimentos
tskill ContabilGestor
tskill GeobGestor
tskill Main
net stop Gestor90
taskkill /IM ServerService.exe /F
cd "C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos"
for /f "delims=" %%x in (Servidor.txt) do set "Servidor=%%x"
echo %Servidor%
for /f "delims=" %%x in (SelectBase.txt) do set "base=%%x"
echo %base%
SQLCMD -U SA -P senha -S %Servidor% -d master -q "drop database %base%"
cmd
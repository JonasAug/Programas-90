@ECHO OFF
tskill ServerServiceGUI
tskill Suprimentos
tskill ContabilGestor
tskill GeobGestor
tskill Main
net stop Gestor90
taskkill /IM ServerService.exe /F

cd/
SQLCMD -U SA -P senha -S pat-0086 -i "C:\tmp\Troca de base\sql" >"C:/tmp/Troca de base/bases"
cd "C:/tmp/Troca de base"
CLS
type bases
set /P base="Qual base deseja conectar?"
type superior.txt > server.cfg.xml
echo %base%>> server.cfg.xml
type inferior.txt >> server.cfg.xml
CLS
xcopy "C:\tmp\Troca de base\server.cfg.xml" /R /Y "C:\90\ServidorGestor90"
net start Gestor90
sc query Gestor90 | findstr "ESTADO"| findstr "RUNNING"
IF %ERRORLEVEL% == 1 GOTO SERVIDOR
IF %ERRORLEVEL% == 0 GOTO CLIENTE

:CLIENTE
start C:\90\ClienteGestor90\Main.exe
goto fim

:SERVIDOR 
start C:\90\ServidorGestor90\ServerServiceGUI.exe
goto fim

:fim
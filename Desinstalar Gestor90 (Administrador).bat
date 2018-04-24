@ECHO OFF
sc query Gestor90 | findstr "ESTADO"| findstr "RUNNING"
IF %ERRORLEVEL% == 1 GOTO TESTE
IF %ERRORLEVEL% == 0 GOTO RODANDO

:RODANDO
tskill ServerServiceGUI
tskill ServerService
tskill Suprimentos
tskill ContabilGestor
tskill GeobGestor
tskill Main
net stop Gestor90
GOTO DESINSTALADO

:TESTE
sc query Gestor90 | findstr "não existe"
IF %ERRORLEVEL% == 0 GOTO DESINSTALADO
IF %ERRORLEVEL% == 1 GOTO PARADO

:PARADO
ECHO "PARADO"
wmic product where name="Cliente Gestor 90 Engenharia" call uninstall /nointeractive
wmic product where name="Servidor Gestor 90 Engenharia" call uninstall /nointeractive
GOTO DESINSTALADO

:DESINSTALADO
ECHO "DESISNTALADO"
cmd
cd/
d:
cd "Gestor 90-Versoes"

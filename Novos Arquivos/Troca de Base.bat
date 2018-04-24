@ECHO OFF
tskill ServerServiceGUI
tskill Suprimentos
tskill ContabilGestor
tskill GeobGestor
tskill Main
net stop Gestor90
taskkill /IM ServerService.exe /F

CLS
xcopy "C:\Users\jonas.augusto\Desktop\Pacote C#\Novos Arquivos\server.cfg.xml" /R /Y "C:\90\ServidorGestor90"
net start Gestor90
sc query Gestor90 | findstr "ESTADO"| findstr "RUNNING"
timeout /t 1
IF %ERRORLEVEL% == 1 GOTO SERVIDOR
IF %ERRORLEVEL% == 0 GOTO CLIENTE

:CLIENTE
start C:\90\ClienteGestor90\Main.exe
goto fim

:SERVIDOR 
start C:\90\ServidorGestor90\ServerServiceGUI.exe
goto fim

:fim
@echo off

tskill ServerServiceGUI
tskill Suprimentos
tskill ContabilGestor
tskill GeobGestor
tskill Main
net stop Gestor90
taskkill /IM ServerService.exe /F
start C:\90\ServidorGestor90\ServerServiceGUI.exe
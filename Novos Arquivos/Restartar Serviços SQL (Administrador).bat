@echo off
tskill sqlservr
net stop MSSQLLaunchpad
net stop MSSQLSERVER
net stop SQLAgent$SQLSERVER
net stop MSSQLLaunchpad$SQLSERVER
net stop MSSQL$SQLSERVER
net stop SQLSERVERAGENT
net stop MSOLAP$SQLSERVER
net stop SSASTELEMETRY$SQLSERVER
net stop SQLBrowser
net stop SQLTELEMETRY$SQLSERVER
net stop MsDtsServer140
net stop SSISTELEMETRY140
net start MSSQLLaunchpad
net start MSSQLSERVER
net start SQLAgent$SQLSERVER
net start MSSQLLaunchpad$SQLSERVER
net start MSSQL$SQLSERVER
net start SQLSERVERAGENT
net start MSOLAP$SQLSERVER
net start SSASTELEMETRY$SQLSERVER
net start SQLBrowser
net start SQLTELEMETRY$SQLSERVER
net start MsDtsServer140
net start SSISTELEMETRY140
@echo off
:aa
MSG * SQL Reiniciado 
exit
@echo off
set LOGFILE=jobseeker_automation.log
call :LOG > %LOGFILE%
exit /B

:LOG
cd C:\gitclone\Shenzyn-Test-Aut\development\shenzyn
call robot --timestampoutputs -d results tests\jobseeker_automation.robot
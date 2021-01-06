@echo off
set LOGFILE=jobseeker_automation.log
call :LOG > %LOGFILE%
exit /B

:LOG
cd C:\gitclone\Shenzyn-Test-Aut\development\shenzyn
call robot --timestampoutputs -d results tests\jobseeker_automation.robot
timeout /t 10 /nobreak
call python3  C:\gitclone\Shenzyn-Test-Aut\development\shenzyn\emailTrigger\jobseeker_email.py
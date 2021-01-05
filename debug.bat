@echo off
pushd & color & title Root Debug Tool

call :parameter

echo %r% & choice /m "Would you like to restart?"
if %errorlevel%==1 (start debug.bat & EXIT) ELSE (EXIT)

rem updated in patch-24 ------

:parameter
set /p one=Define parm #1:
if "%one%" == "" (cmd /k Root.cmd -debug & exit /b)
set /p two=Define parm #2:
if %two% == "" (cmd /k Root.cmd %one% & exit /b)
set /p three=Define parm #3:
if %three% == "" (cmd /k Root.cmd %one% %two% & exit /b)
set /p four=Define parm #4:
if %four% == "" (cmd /k Root.cmd %one% %two% %three% & exit /b)
set /p five=Define parm #5:
if %five% == "" (cmd /k Root.cmd %one% %two% %three% %four% & exit /b)
cmd /k Root.cmd %one% %two% %three% %four% %five%
exit /b

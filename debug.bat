@echo off
pushd & color & title Root Debug Tool
if EXIST Root.cmd (
	if EXIST gater.cmd (
		goto both) ELSE (
		goto Root)
	) ELSE (
	if EXIST gater.cmd (
		goto gater) ELSE (
		goto invalid)
	)
	
goto invalid

:Root
cmd /k Root.cmd
goto :eof

:gater
cmd /k gater.cmd
goto :eof

:both
choice /c RG /m "Root or gater?"
if %errorlevel%==1 goto Root
if %errorlevel%==2 goto gater
goto invalid

:invalid
echo Invalid arguments
pause
:eof
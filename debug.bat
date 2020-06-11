@echo off
pushd & color & title Root Debug Tool

::Define parameters
rem set /p one=Define parm #1:
rem set /p two=Define parm #2:
rem set /p three=Define parm #3:
rem set /p four=Define parm #4:
rem set /p five=Define parm #5:


if EXIST "Root.cmd" (
	if NOT DEFINED one (
		cmd /k Root.cmd -debug
	) ELSE (
		if NOT DEFINED two (
			cmd /k Root.cmd %one%
		) ELSE (
			if NOT DEFINED three (
				cmd /k Root.cmd %one% %two%
			) ELSE ( 
				if NOT DEFINED four (
					cmd /k Root.cmd %one% %two% %three%
				) ELSE (
					if NOT DEFINED five (
						cmd /k Root.cmd %one% %two% %three% %four%
						) ELSE (
						cmd /k Root.cmd %one% %two% %three% %four% %five%
						)
					)
				)
			)
		)
	) ELSE (echo "Unable to find Root.cmd" & echo "Make sure Root.cmd is in the same folder as debug.bat" & echo "Make sure you don't run debug.bat as an administrator.")
echo %r% & choice /m "Would you like to restart?"
if %errorlevel%==1 (start debug.bat & EXIT) ELSE (EXIT)

rem updated in patch-23
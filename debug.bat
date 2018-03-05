@echo off
pushd & color & title Root Debug Tool
cmd /k Root.cmd 
choice /m "Would you like to restart?"
if %errorlevel%==1 (start debug.bat) ELSE (EXIT)
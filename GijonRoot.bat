@echo off
title B: Root b5
color 0f
echo (c) 2016 Gijon. All rights reserved.
echo B: Loaded Root b5
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost >nul
cls

:fastload
echo (c) 2016 Gijon. All rights reserved.
echo B: Please select the program you'd like to run.
echo B:
echo B: -----------------------------------
echo B: 
echo B: Select [KeyGen],[Checker],[Java],[Windows],[Timer].
echo B:
echo B: -----------------------------------
set /p sp=IN:

if %sp%==KeyGen goto A
if %sp%==Checker goto B
if %sp%==Java goto C
if %sp%==Windows goto D
if %sp%==Timer goto E  
if %sp%==KeyGenerator goto A
if %sp%==IPChecker goto B
if %sp%==JavaVer goto C
if %sp%==WindowsVer goto D
if %sp%==CallTimer goto E 
if %sp%==PasswordGen goto A
if %sp%==IPChecker goto B
if %sp%==JavaVersion goto C
if %sp%==WindowsVersion goto D
if %sp%==UpdatedTimer goto E if NOT goto reload

:reload 
goto fastload

:A
cls
call GijonKeyGen.bat
goto end

:B
cls
echo B: Launching...
start GijonChecker.bat
goto end

:C
cls
call GijonJavaVer.bat
goto end

:D
cls
call GijonWinVer.bat
goto end

:E
cls
echo B: Launching...
start GijonTimer.bat
goto end

:end
ping localhost>nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Select [Restart] or [Exit]
echo B:
echo B: -----------------------------------
set /p ie=IN:
if %ie%==Restart goto reload if NOT goto exit
ping localhost >nul
cls

:exit
exit
rem This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
rem This product is licensed under GPL GNU v3

@echo off
cls
color 07
set stable=%random%
prompt gijon.Root$q
title Root [...]
echo Installing Root...
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color a0
ping localhost /n 1 >nul

set filename=Root.cmd
set patch=11
set name=Root
set color=f0
set color1=c0
set color2=a0
set color3=b0
set spacer============================================================================
set link=github.com/GijonDev
set run=Running
set underpatch=under patch-%patch%.
set opload=Generated output from
set "codesx=Session key: %stable%"
set promptcmd=%name%#$
set "title=%name% [%stable%]"
set debug=false
set randname=Randomizer
set pingername=Pinger
set javavername=JavaInfo
set systemname=SysInfo
set timername=Timer
set gamesname=Games
set ssname=Shutdown
set forkdevname=ForkDev(tm)
set ssname=ScreenSaver
set winname=Windows
set shellname=SETX-Shell
set randoutput=%randname%#%stable%.txt
set pingeroutput=%pingername%#%stable%.txt
set systemoutput=%systemname%#%stable%.txt
set ssd=0

color %color%
ping localhost /n 3 >nul
cls
echo Root's automated log-in interface
echo.
echo.
set /p user=Username:
if %user%==rl goto reload
if NOT EXIST %userprofile%\RootSessionFiles.ini set ssd=1
cls
echo Root's automated log-in interface
echo.
echo.
echo Logged in as %user%.
echo %user%:%stable% 	:[%date% , %time%][r%patch%] >>%userprofile%\RootSessionFiles.ini
title %title%
ping localhost /n 3 >nul
:menu
cls
title %title%
color %color%
echo %spacer%
echo =      Ver: patch-%patch%               :           License: GPL GNU v3        =
echo %spacer% 
echo.
echo.
echo.                   
echo                                      d8P        (tm) patch-%patch%
echo                                   d888888P
echo         88bd88b d8888b   d8888b    ?88'
echo        88P'    d8P' ?88 d8P' ?88   88P  
echo       d88      88b  d88 88b  d88  88b  
echo      d88'      `?8888P' `?8888P' ?8b  
echo.
echo.
echo.
echo %spacer%
echo =           github.com/GijonDev      :         gijondev.github.io         =
echo %spacer%
:msgdebug
echo.
@title %title%
@color %color%
set /p mi=%promptcmd%
echo.
goto %mi%

:reload
:rl
echo Detected reload parameter. Reloading...
ping localhost >nul
title %0
call %0

:cls
:clear
goto menu

:dev
if %debug%==true goto nodev
echo Activated debug mode
echo on
set debug=true
goto msgdebug

:undev
if "%debug%==false" goto nodev
@echo off
cls
echo Reverting debug mode...
color 0f
ping localhost /n 3 >nul
goto menu
:nodev
echo Command repetition detected. What you are trying to do is already active.
goto msgdebug

:win
:WINDOWS
echo Installing Windows enviroment...
echo To go back to %name%, execute "%filename%".
@prompt Root.WIN$G
ping localhost /n 3 >nul
color 07
cmd

:SETX
:Shell
title %title% %shellname%
echo %run% %shellname% %underpatch%
ping localhost /n 3 >nul
echo Setting permanent variable...
echo (input "end" to go back)
set /P shellname=Set variable name:
set /p shellpass=Set variable status:
if %shellname%==end goto shellend
if %shellpass%==end goto shellend
echo Setting %shellname% as %shellpass%...
ping localhost /n 3 >nul
SETX %shellname% %shellpass%
SETX Root_SHELL_Enabled.%shellname% true
echo Variable set.
ping localhost /n 3 >nul
goto msgdebug

:keygen
:randomizer
:rand
color %color%

title %link%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
title %title% %randname%
echo %run% %randname% %underpatch%
ping localhost>nul
title %title% %randname%: Processing...
echo Generating...
echo Opened file >%randoutput%
echo. >>%randoutput%
echo Best key: >>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo. >>%randoutput%
echo Other keys: >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo. >>%randoutput%
echo -end of the file- >>%randoutput%
%randoutput%
title %title%
goto msgdebug


:checker
:pinger
echo %run% %pingername% %underpatch%
ping localhost>nul
echo Recommended hosts: "ubuntu.com","prod.euw1.lol.riotgames.com"
set /p pingerinput=Input host:
set pingertarget=%pingerinput%
:pingerping
echo Pinging to %pingertarget%
echo.
echo Pinging to %pingertarget%  from %filename% >%pingeroutput%
echo. >>%pingeroutput%
echo =TRACERT: >>%pingeroutput%
tracert %pingertarget% >>%pingeroutput%
echo. >>%pingeroutput%
echo. >>%pingeroutput%
echo =NSLOOKUP (Self DNS): >>%pingeroutput%
nslookup %pingertarget% >>%pingeroutput%
echo =NSLOOKUP (Google DNS): >>%pingeroutput%
nslookup %pingertarget% 8.8.8.8 >>%pingeroutput%
echo. >>%pingeroutput%
echo. >>%pingeroutput%
echo =16B PING:>>%pingeroutput%
ping %pingertarget% /l 16 >>%pingeroutput%
echo. >>%pingeroutput%
echo -end of the file- >>%pingeroutput%
%pingeroutput%
echo.
ping localhost>nul
goto msgdebug

:javaver
:javainfo
color %color%
ping localhost /n 1 >nul
title %link%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
title %title% %javavername%
echo %run% %javavername% %underpatch%
ping localhost>nul
title %title% %javavername%: Getting version...
echo Java...
ping localhost >nul
title %title% %javavername%
java -version
echo.
pause
title %title%
goto msgdebug

:system
:winver
:sysinfo
color %color%
ping localhost /n 1 >nul
title %link%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
title %title% %systemname%
echo %run% %systemname% %underpatch%
ping localhost>nul
title %title% %systemname%: Getting info...
echo Getting system information...
ping localhost /n 3 >nul
systeminfo >nul
title %title% %systemname%
ver
echo Current error level: %errorlevel%
echo Outputing information to %systemoutput%
systeminfo >%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput% 
ipconfig /all >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo -end of the file- >>%systemoutput%
%systemoutput%
title %title%
goto msgdebug



:timer
color %color%
ping localhost /n 1 >nul
title %link%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
title %title% %timername%
echo %run% %timername% %underpatch%
ping localhost>nul
cls
title %title% %timername%: Updating...
echo Updating time and loading files...
ping localhost>nul
cls
color %timercolor%
:timerestart
title %timername% %stable%

cls
echo %time% ; %date%
echo %codesx%
goto timerestart

:ss
:screensaver
title %title%
echo %run% %ssname% %underpatch%
ping localhost>nul
mode 1000
cls
set ssclip=0
set ccclip=0
:ssr
cls
color %cclip%f
echo %ssname% by GijonDev
echo %time%
set /a ssclip=%ssclip%+1
if %ssclip%==50 set /a ccclip=%ccclip%+1
if %ssclip%==50 set ssclip=0
echo %ssclip% %ccclip%
ping ::1: /n 1 >nul
goto ssr

:delete
:del
if EXIST *.txt del *.txt
if EXIST *.vbs del *.vbs
if EXIST *.bat del *.bat
if EXIST C:\Users\Public\bfhosts.exe del C:\Users\Public\bfhosts.exe
echo Successfully deleted cache files.
goto msgdebug


:shutdown
:shutdowntool

@cls
@echo This module ain't ready yet.
@echo Please go back to the menu.
@pause
@goto menu

title %title% %shutdownname%
echo %run% %shutdownname% %underpatch%
ping localhost>nul

:selfdestruct
:sd
set /p sdy=Are you sure you want to delete Root from your computer completely? (self-destruct) (Y/N):
if %sdy%==Y (goto sds)
echo Negative answer. Returning to menu...
ping localhost >nul
goto menu
:sds
cls
echo Self-destructing...
ping localhost >Nul
del /f /q %userprofile%\RootSessionFiles.ini
if EXIST *.txt del *.txt
if EXIST *.vbs del *.vbs
if EXIST *.bat del *.bat
if EXIST C:\Users\Public\bfhosts.exe del C:\Users\Public\bfhosts.exe
del /f /q %0



:bfhosts
@echo This module is using unsupported bHombrew.
@echo.
ping localhost /n 3 >nul
echo %null% Loaded hombrew v5.
echo %null%
echo %spacer%
ping localhost /n 3 >nul
bitsadmin.exe /transfer "BF1942_FIX" "http://forum.bf1942.sk/files/bf1942_gamespy_patcher.exe" "C:\Users\Public\bfhosts.exe"
cls
C:\Users\Public\bfhosts.exe
if EXIST C:\Users\Public\bfhosts.exe del C:\Users\Public\bfhosts.exe
goto menu

:skipwin
@echo off
cls
echo I don't even know how the f*ck you managed to get here but this is not a valid Windows version.
echo If you are running Windows don't restart your computer as it may be damaged.
echo Please next time run %name% in a valid Windows location.
pause

:EOF





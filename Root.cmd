rem This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
rem This product is licensed under GPL GNU v3

@echo off
if NOT EXIST C:\WINDOWS\system32 goto skipwin
cls
color 07
set stable=%random%
prompt Root.cmd$$
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
set patch=12
set name=Root
set color=f0
set color1=c0
set color2=a0
set color3=b0
set spacer============================================================================
set link=github.com/GijonDev
set run=Running
set opload=Generated output from
set "codesx=Session key: %stable%"
set promptcmd=%name%#$
set "title=%name% [%stable%]"
set debug=false
set randoutput=Randomizer#%stable%.txt
set pingeroutput=Pinger#%stable%.txt
set systemoutput=SysInfo#%stable%.txt
set flushoutput=Flush#%stable%.txt
set ssd=0

rem List of runnable modules
set reload=1
set rl=1
set cls=1
set clear=1
set dev=1
set day=1
set undev=1
set win=1
set windows=1
set setx=1
set shell=1
set gay=1
set keygen=1
set randomizer=1
set rand=1
set checker=1
set pinger=1
set javaver=1
set javainfo=1
set system=1
set winver=1
set sysinfo=1
set ss=1
set screensaver=1
set delete=1
set del=1
set sd=1
set selfdestruct=1
set bfhosts=1
set flush=1
set off=1
set sessions=1
set eof=1

color %color%
ping localhost /n 3 >nul
cls
echo Root's log-in interface:
echo.
echo.
set /p user=User:
if %user%==rl goto reload
ping localhost /n 1 >nul
echo Key:%stable%
echo.
echo Logged in.
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
if DEFINED %mi% (goto %mi%) ELSE (echo Incorrect parameter.)
goto msgdebug

:reload
:rl
echo Detected reload parameter. Reloading...
ping localhost >nul
title %0
call %0

:off
goto eof

:cls
:clear
goto menu

:dev
if %debug%==true goto nodev
echo Activated debug mode
echo on
set debug=true
goto msgdebug

:day
echo you are a nerd aren't you?
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
echo %run% SETX/Shell.
ping localhost /n 3 >nul
echo Setting permanent variable...
echo (input "end" to go back)
set /P shellname=Set variable name:
set /p shellpass=Set variable status:
if %shellname%==end goto shellend
if %shellpass%==end goto shellend
SETX %shellname% %shellpass%
SETX Root_SHELL_Enabled.%shellname% true
echo Variable set.
ping localhost /n 3 >nul
goto msgdebug

:gay
echo you are omfg
goto msgdebug

:keygen
:randomizer
:rand
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
echo %run% Randomizer.
ping localhost>nul
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
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
echo %run% Pinger.
ping localhost>nul
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
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
echo %run% JavaVer.
ping localhost>nul
echo Java...
ping localhost >nul
java -version
echo.
pause
title %title%
goto msgdebug

:system
:winver
:sysinfo
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
echo %run% SysInfo.
ping localhost>nul
systeminfo >nul
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


:ss
:screensaver
title %title%
echo %run% ScreenSaver.
ping localhost>nul
mode 1000
cls
set ssclip=0
set ccclip=0
:ssr
cls
color %ccclip%f
echo %ssname% by GijonDev
echo %time%
set /a ssclip=%ssclip%+1
if %ssclip%==50 set /a ccclip=%ccclip%+1
if %ssclip%==50 set ssclip=0
if %ccclip%==10 set ccclip=0
goto ssr

:delete
:del
if EXIST *.txt del *.txt
if EXIST *.vbs del *.vbs
if EXIST *.bat del *.bat
if EXIST C:\Users\Public\bfhosts.exe del C:\Users\Public\bfhosts.exe
ping localhost /n 1 >nul
echo Successfully deleted cache files.
goto msgdebug


:offsys
rem WIP

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

:flush
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
echo %run% Flush.
ping localhost>nul
echo Working...
ipconfig /flushdns 
ipconfig /registerdns
echo.
ipconfig /release
ipconfig /release6
ipconfig /displaydns
cls
echo Flush reports >%flushoutput%
echo WARNING! You may need to power-cycle your device/router/ethernet cable. >>%flushoutput%
echo. >>%flushoutput%
ipconfig /release >>%flushoutput%
ipconfig /release6 >>%flushoutput%
ipconfig /displaydns >>%flushoutput%
%flushoutput%
goto menu


:skipwin
@echo off
cls
echo I don't even know how the f*ck you managed to get here but this is not a valid Windows version.
echo If you are running Windows don't restart your computer as it may be damaged.
echo Please next time run %name% in a valid Windows location.
pause
goto eof

:sessions
%userprofile%\RootSessionFiles.ini
goto msgdebug

:EOF





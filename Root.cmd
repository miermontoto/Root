rem This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
rem This product is licensed under CC-BY-SA-4.0. A copy of this license may be found in the project's repo.

@echo off

rem LoL files loaction
if EXIST "%programfiles%\League of Legends\lol.launcher.exe" set LeagueLocated=32
if EXIST "%programfiles% (x86)\League of Legends\lol.launcher.exe" (set LeagueLocated=64) ELSE (set LeagueLocated=custom)

cls
color 07
set /a id=%random% %% 10000
set r=Root.cmd
prompt Root$g
title Root [...]
echo Installing Root...
if NOT [%1]==[] (set parameter1=enabled) ELSE (set parameter1=disabled)
if %parameter1%==enabled (echo Parameter stroke)
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color a0
ping localhost /n 1 >nul

set patch=14
set name=Root
set color1=c0
set color2=a0
set color3=b0
set spacer============================================================================
set run=Running
set opload=Generated output from
set cmd=%name%:
set "title=%name% [%id%]"
set "titleo=%title%"
set "titler=%title%"
set debug=false
set randoutput=Randomizer#%id%.txt
set pingeroutput=Pinger#%id%.txt
set systemoutput=SysInfo#%id%.txt
set flushoutput=Flush#%id%.txt

rem List of runnable modules
rem ------------------------
set #reload=1
set #rl=1
set #cls=1
set #rel=1
set #clear=1
set #dev=1
set #day=1
set #undev=1
set #win=1
set #windows=1
set #keygen=1
set #randomizer=1
set #rand=1
set #checker=1
set #pinger=1
set #javaver=1
set #javainfo=1
set #system=1
set #sysinfo=1
set #ss=1
set #screensaver=1
set #delete=1
set #del=1
set #sd=1
set #selfdestruct=1
set #flush=1
set #off=1
set #sessions=1
set #eof=1
set #bnw=1
set #color=1
set #title=1
set #rsessions=1

rem Use commands without "#"
rem Also "reset" and "back" inside color/title settings.

rem Open this file with a parameter to go to the module if vaild.
rem EX: Root.cmd rand will execute Root.cmd, login and then rand automatically.

rem -------------

rem Color detection
if NOT EXIST %userprofile%\RootSessionsFile.ini goto ftr
:ll
color %color%

cls
echo Logged in using id %id%
if %parameter1%==enabled (echo [Pre-Loaded command: "%1"])
echo [%date% , %time%][r%patch%] Logged in. (%id%)>>%userprofile%\RootSessionsFile.ini
title %title%
ping localhost >nul
:menu
cls
title %title%
color %color%
echo %spacer%
echo =          Ver: patch-%patch%             :       License: CC-BY-SA-4.0        =
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
echo.
if %parameter1%==enabled goto %1
:msgdebug
echo.
title %title%
color %color%
set /p mi=%cmd%
echo.
if DEFINED #%mi% (goto %mi%) ELSE (echo Incorrect parameter.)
goto msgdebug

:color
set /P cas=Root(Color):
if %cas%==back goto msgdebug
echo [%date% , %time%][r%patch%] Set color theme. (%cas%)>>%userprofile%\RootSessionsFile.ini
if %cas%==reset goto cmod_reset
setx color %cas%
set color=%cas%
goto ndetect
:cmod_reset
setx color "f0"
set color=f0
goto cmod_wh
:ndetect
color %color%
goto msgdebug
:title
set /p titled=Root(Title):
if %titled%==back goto msgdebug
if %titled%==reset goto titler
set title=%titled%			
title %title%		
goto msgdebug
:titler
set title=%titler%
title %title%
goto msgdebug

:reload
:rl
:rel
cls
start %r%
ping localhost /n 1 >nul
exit

:off
goto eof

:bnw
if %color%==f0 goto bl
if %color%==0f (goto wh) ELSE (echo You cannot Black and White because you have a modded color theme.)
goto msgdebug
:bl
set cas=0f
setx color %cas%
set color=%cas%
goto msgdebug
:wh
set cas=f0
setx color %cas%
set color=%cas%
goto msgdebug

:sessions
start %userprofile%\RootSessionsFile.ini
goto msgdebug

:rsessions
del /Q /f %userprofile%\RootSessionsFile.ini
echo Deleted sessions file. A new one will be generated in the next login.
goto msgdebug
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
if EXIST %public%\WinRoot.bat attrib -h %public%\WinRoot.bat & del %public%\WinRoot.bat
ping localhost /n 3 >nul
echo @echo off >%public%\WinRoot.bat
echo color 07 >>%public%\WinRoot.bat
echo title CMD.EXE from %title% >>%public%\WinRoot.bat
echo prompt >>%public%\WinRoot.bat
echo cmd >>%public%\WinRoot.bat
attrib +h %public%\WinRoot.bat
start %public%\WinRoot.bat
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
echo Generated keys from %r% at [%time% , %date%] >%randoutput%
echo. >>%randoutput%
echo ##PC's unique keys: >>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo. >>%randoutput%
echo. >>%randoutput%
echo ##Default randomized keys: >>%randoutput%
echo ####[1-5] >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo %RANDOM% >>%randoutput%
echo ####[2-10] >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM% >>%randoutput%
echo ####[3-15] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo ####[4-20] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo ####[5-25] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random% >>%randoutput%
echo. >>%randoutput%
echo. >>%randoutput%
echo -end of the file- >>%randoutput%
echo Successfully generated and opened keys.
start %randoutput%
echo.
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
echo Pinging to %pingertarget%  from %r% >%pingeroutput%
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
start %pingeroutput%
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
goto msgdebug

:system
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
ver
echo Current error level: %errorlevel%
echo Outputing information to %systemoutput%
systeminfo >%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
tasklist /v >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
ipconfig /all >>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
echo -end of the file- >>%systemoutput%
start %systemoutput%
echo.
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
if EXIST %public%\WinRoot.bat attrib -h %public%\WinRoot.bat
if EXIST %public%\WinRoot.bat del %public%\WinRoot.bat
echo Successfully deleted cache files.
goto msgdebug

:selfdestruct
:sd
set /P er=Are you sure you want to self-destruct Root? Input "Y" to confirm:
if %er%==Y (GOTO SDS) ELSE (echo Negative answer. Returning to menu...)
ping localhost >nul
goto msgdebug
:sds
cls
echo Self-destructing...
ping localhost >Nul
del /f /q %userprofile%\RootSessionsFile.ini
if EXIST *.txt del *.txt
if EXIST *.bat del *.bat
if EXIST *.cmd del *.cmd
if EXIST C:\Users\Public\bfhosts.exe del C:\Users\Public\bfhosts.exe
if EXIST C:\Users\Public\ublock_origin.txt del C:\Users\Public\ublock_origin.txt
if EXIST C:\Users\Public\Showdown.ini del C:\Users\Public\Showdown.ini
if EXIST Showdown.ini del Showdown.ini
if EXIST ublock_origin.txt del ublock_origin.txt
if EXIST bfhosts.exe del bfhosts.exe
if EXIST %public%\WinRoot.bat attrib -h %public%\WinRoot.bat
if EXIST %public%\WinRoot.bat del %public%\WinRoot.bat
del /f /q %0
exit


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
echo WARNING! You may need to power-cycle your device/router/ethernet cable
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
start %flushoutput%
echo.
goto msgdebug


:skipwin
@echo off
cls
echo Invalid OS detected.
echo %name% should be ran in "Windows_NT".
pause
goto eof

:ftr
echo Generated session files on [%time% , %date%] >%userprofile%\RootSessionsFile.ini
echo Sessions and colors are saved on this file. Do not delete. >>%userprofile%\RootSessionsFile.ini
echo ----------------- >>%userprofile%\RootSessionsFile.ini
echo. >>%userprofile%\RootSessionsFile.ini
echo. >>%userprofile%\RootSessionsFile.ini
echo. >>%userprofile%\RootSessionsFile.ini
set cas=f0
set color=%cas%
setx color %cas%
goto ll

:EOF
if EXIST %public%\WinRoot.bat attrib -h %public%\WinRoot.bat
if EXIST %public%\WinRoot.bat del %public%\WinRoot.bat
exit





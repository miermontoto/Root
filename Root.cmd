rem This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
rem This license is using Apache License 2.0. Read below.
rem Made by http://www.github.com/GijonDev
rem Latest version of this product can be found on http://www.github.com/GijonDev/BasicGijon/releases
rem More information about the poduct can be found in http://www.github.com/GijonDev/BasicGijon/projects/2
rem This product has been created and edited using Notepad++ and Windows 7/10.
rem
rem
rem --------------------------------------------------------------------
rem --------------------------------------------------------------------
rem  Copyright {16/17} {GijonDev}
rem
rem  Licensed under the Apache License, Version 2.0 (the "License");
rem  you may not use this file except in compliance with the License.
rem  You may obtain a copy of the License at:
rem
rem      http://www.apache.org/licenses/LICENSE-2.0
rem
rem  and an specific copy of the license for this product at:
rem
rem  	 https://github.com/GijonDev/BasicGijon/blob/master/LICENSE.md
rem
rem  This applies to every file created AND/OR by this file incluiding the
rem  file itself and to every piece of code written in this file and
rem  in the files created by this file. Read LICENSE.md for more.
rem  License can be found in master\LICENSE.md at the GitHub project "Root".
rem
rem  *******************************************************************************
rem  *BY RUNNING THIS FILE YOU LEGALLY ACCEPT THE VALID LICENSE FOR THIS FILE FOUND*
rem  *AT (https://github.com/GijonDev/Root/license.md) AND ALL ITS CONDITIIONS AND *
rem  *TERMS. CONTINUE AT YOUR OWN RISK! GITHUB IS IN NO WAY AFFILIATED WITH THIS!  *
rem  *******************************************************************************







:root
@echo off
@cls
set "prompt=GijonDev.Root.native$G"
set stable=%random%
prompt %prompt%
echo Installing Root...
ping localhost /n 2 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color a0
ping localhost /n 1 >nul



cls
echo pUxzEuNe1K4PAkJXq5DX
echo a5guQ4aDw4qSewgXv7Sr
echo L6mgfQL2DHy2ReyauHeL
echo tXplgRjkLcWInbsn0wEU
echo Vs64q0qqlxV5k6n85Rkx
echo 0wnspthvZ3oNaOl1HuvM
echo eJmVjjHeP9IGLv18cVr0
echo A6iHKbiHIIuAoMKwlHtQ
echo kSGZ7o6KGFTqNrWUIM0q
echo 0jA4MagmFgrIOdiSYL3
echo pUxzEuNe1K4PAkJXq5DX
echo a5guQ4aDw4qSewgXv7Sr
echo L6mgfQL2DHy2ReyauHeL
echo tXplgRjkLcWInbsn0wEU
echo Vs64q0qqlxV5k6n85Rkx
echo 0wnspthvZ3oNaOl1HuvM
echo eJmVjjHeP9IGLv18cVr0
echo A6iHKbiHIIuAoMKwlHtQ
echo kSGZ7o6KGFTqNrWUIM0q
echo 0jA4MagmFgrIOdiSYL3





set filename=Root.cmd
set developer=GijonDev
set patch=11
set license=http://www.github.com/GijonDev/BasicGijon/license
set target=menu
set name=Root
set color=07
set color1=c0
set color2=a0
set color3=b0
set spacer============================================================================
set link=github.com/GijonDev
set input=$
set mdload=Running
set paload=under patch-%patch%.
set opload=Generated output from
set meload=Menu
set label=label
set label_output=label_output
set ftload=f-%stable%
set "ffload=File code: %stable%"
set "promptcmd=GijonDev.lang.Root:"
set ttload=GijonDev.Root [%stable%]
set debug=false
set randcolor=c0
set pingercolor=a0
set javavercolor=c0
set systemcolor=b0
set timercolor=%color%
set sscolor=07
set forkdevcolor=07
set shellcolor=07
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
set randoutput=%filename%.%randname%.txt
set pingeroutput=%filename%.%pingername%.txt
set systemoutput=%filename%.%systemname%.txt












@color 07
@ping localhost >nul
:motd
cls
echo Root's automated log-in interface
echo.
echo.
:log
title %ttload%
set /p user=Username:
if %user%==%stable% goto 01deGbugg
if %user%==reload goto reload
if %user%==skip goto menu
echo Logged in as %user%.
ping localhost >nul
:menu
:restart
cls
title %ttload%
color %color%
echo %spacer%
echo =     Ver: patch-%patch% : Released on: 13/12/2016 : GijonDev/Root/releases    =
:msgtrig
echo %spacer%
echo =  FileCode[%stable%]     :    License: APACHEII      :          %date%  =
echo %spacer%
echo.
echo.
echo.                   
echo                                      d8P        (tm) patch-%patch%
echo                                   d888888P           %stable%
echo         88bd88b d8888b   d8888b    ?88'
echo        88P'    d8P' ?88 d8P' ?88   88P  
echo       d88      88b  d88 88b  d88  88b  
echo      d88'      `?8888P' `?8888P' ?8b  
echo.
echo.
echo.
echo %spacer%
echo =        github.com/GijonDev         :         twitter.com/GijonDev       =
echo %spacer%
echo =     youtube.com/underscoreBis      :         osu.ppy.sh/u/4969821       =
echo %spacer%

:msgdebug
echo.
@title %ttload%
@color %color%
set /p menuinput=%promptcmd%
echo.
echo.
echo.
echo %spacer%
echo.
echo.
echo.
echo.
echo.
goto %menuinput%

:return
echo Wrong parameter entered. Use "help" or "?" for the commands.
goto msgdebug


:exit
exit

:reload
cls
echo Detected reload parameter. Reloading...
ping localhost >nul
call %0

:cls
cls
goto menulabel

:%stable%
@cls
@echo Activating debug mode...
color 0f
set debug=true
goto menu

:undodebug
if "%debug%==false" goto kudebug
@echo off
cls
echo Reverting debug mode...
color 0f
ping localhost >nul
goto menu
:kudebug
echo Debug mode is not activated. Make sure it is before trying to undo it.
goto msgdebug

:help
:?
echo List of possible inputs:
echo.
echo Moudules:
echo *%randname% (%randname%,rand,keygen)
echo *%pingername% (%pingername%,pinger,checker)
echo *%javainfoname% (%javainfoname%,javaver,java)
echo *%sysinfoname% (%sysinfoname%,system,winver)
echo *%timername% (%timername%,calltimer)
echo *%forkdevname% (%forkdevname%)
echo *%ssname% (%ssname%,ss)
echo *%winname% (%winname%,win,winenv)
echo *%shellname% (setx,shell,shellset)
echo.
echo Triggers:
echo *Twitter (twitter.com/GijonDev)
echo *GitHub (github.com/GijonDev)
echo *Delete (delete)
echo *Exit (exit)
echo *Help (help,?)
echo *CLS (cls)
echo *Menu (menu,menulabel,restart)
echo *Reload (reload)
echo.
echo Full list: "help,cls,reload,exit,undodebug,randomizer,pinger,javainfo,sysinfo,timer,forkdev,win,twitter,github,delete,screensaver"
echo You can access any label from here, but it is recommended you only access ones above.
goto msgdebug


:win
:WINDOWS
:winenv
echo Installing Windows enviroment...
echo To go back to %name%, execute "Root.cmd".
@prompt Root.WindowsEnv$G
ping localhost >nul
color 07
cls
cmd


:SETX
:Shell
:ShellSet
color 07

title %link%
ping localhost>nul
color %color1%

color %color2%

color %color3%

color %color%

title %ttload% %shellname%
echo %mdload% %shellname% %paload%
ping localhost >nul
echo Setting permanent variable...
echo (input "end" to go back)
set /P shellname=Set variable name:
set /p shellpass=Set variable status:
if %shellname%==end goto shellend
if %shellpass%==end goto shellend
echo Setting %shellname% as %shellpass%...
ping localhost >nul
SETX %shellname% %shellpass%
echo Variable set. Redirecting you to the menu...
ping localhost >nul
goto msgdebug

:keygen
:genkey
:randomizer
:rand
color 07

title %link%
ping localhost>nul
color %color1%

color %color2%

color %color3%

color %color%

title %ttload% %randname%
echo %mdload% %randname% %paload%
ping localhost>nul
title %ttload% %randname%: Processing...
echo Processing...
ping localhost>nul
echo Outputing keys to set file "%randoutput%" >%randoutput%
echo. >>%randoutput%
echo Best key: >>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo. >>%output1%
echo Other keys: >>%output1%
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
echo %spacer% >>%randoutput%
%randoutput%
title %ttload%
ping localhost>nul
goto menu





:checker
:pinger
color 07
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
title %ttload% %pingername%
echo %mdload% %pingername% %paload%
ping localhost>nul
echo.
title %ttload% %pingername%
set /p pingerinput=Input host:
if pingerinput==LOLEUW goto loleuw
if pingerinput==loleuw goto loleuw
if pingerinput==LoLEUW goto loleuw
if pingerinput==LoLEUw goto loleuw
if pingerinput==lolEUW goto loleuw
set pingertarget=%pingerinput%
goto pingerping

:loleuw
set pingertarget=prod.euw1.lol.riotgames.com

:pingerping
cls
title %ttload% %pingername%: Pinging...
echo Pinging to %pingertarget%...
echo Testing hosts and tracers...
echo Pinging to %pingertarget% >%pingeroutput%
echo. >>%pingeroutput%
echo %null% =TRACERT: >>%pingeroutput%
tracert %pingertarget% >>%pingeroutput%
echo. >>%pingeroutput%
echo. >>%pingeroutput%
echo %null% =NSLOOKUP (Self DNS): >>%pingeroutput%
nslookup %pingertarget% >>%pingeroutput%
echo %null% =NSLOOKUP (Google DNS): >>%pingeroutput%
nslookup %pingertarget% 8.8.8.8 >>%pingeroutput%
echo. >>%pingeroutput%
echo. >>%pingeroutput%
echo %null% =16B PING:>>%pingeroutput%
ping %pingertarget% /l 16 >>%pingeroutput%
echo. >>%pingeroutput%
echo %null% Real ping = +1~10ms to the average>>%pingeroutput%
echo %spacer% >>%pingeroutput%
%pingeroutput%
echo.
:PINGEREND
title %ttload%
cls
echo Finished "%pingername%". Returning to Root menu...
ping localhost>nul
goto menu

:PINGERLOAD
ping localhost >nul
echo Loading host...
start www.%pingertarget%
goto pingerend



rem JavaInfo
:javaver
:javainfo
color 07
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
title %ttload% %javavername%
echo %mdload% %javavername% %paload%
ping localhost>nul
title %ttload% %javavername%: Getting version...
echo Java...
ping localhost>nul
echo Java SE-Runtime...
ping localhost>nul
echo Java VM-HotSpot...
ping localhost>nul
title %ttload% %javavername%
echo Java version:
echo.
java -version
pause
title %ttload%
ping localhost>nul
goto menu





rem SysInfo (formerly known as WinVer and System)
rem Gives out some computer information.
rem Big module. As big as old! <3
:system
:winver
:systeminfo
:sysinfo
color 07
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
title %ttload% %systemname%
echo %mdload% %systemname% %paload%
ping localhost>nul
title %ttload% %systemname%: Getting info...
echo Getting system information...
ping localhost >nul
systeminfo >nul
title %ttload% %systemname%
ver
echo Error level: %errorlevel%
echo Output: %systemoutput%
echo Outputing information to %systemoutput%.
echo Printing System Information to %systemoutput%. >%systemoutput%
systeminfo >>%systemoutput%>>%systemoutput%
echo. >>%systemoutput%
echo. >>%systemoutput%
ipconfig /all >>%systemoutput%
echo. >>%systemoutput%
echo %spacer% >>%systemoutput%
%systemoutput%
title %ttload%
ping localhost>nul
goto menu




:timer
:calltimer
color 07
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
title %ttload% %timername%
echo %mdload% %timername% %paload%
ping localhost>nul
cls
title %ttload% %timername%: Updating...
echo Updating time and loading files...
ping localhost>nul
cls
color %timercolor%
:timerestart
title %timername% %ftload%

cls
echo %time% ; %date%
echo %ffload%
goto timerestart



rem ScreenSaver.
rem Simple. It changes colour (not randomly) and title.
rem Can be set to "fullscreen" even out of Windows10.
:ss
:screensaver
color 07
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
title %ttload% %ssname%
echo %mdload% %ssname% %paload%
ping localhost>nul
mode 1000
:dark
cls
title %link%
echo %ssname% by %developer%
time /t
echo.
echo Running patch-%patch%
echo %ffload%
color a0
ping localhost >nul 
color b0
ping localhost >nul  
color c0
ping localhost >nul   
color d0
ping localhost >nul
color e0
ping localhost >nul
color f0
ping localhost >nul 
color 0f
ping localhost >nul
color c0
ping localhost >nul  
color a0
ping localhost >nul
color b0
ping localhost >nul
goto dark



rem Delete.
rem Deletes every picece of output and/or old versions of the file that could be created by this or other Root files.
rem Outputs a message to the console.
rem Can be accessed out-of-bounds.
:delete
title %ttload%
del %randoutput%
del %output2%
del %output3%
del %systemoutput%
del %randoutput%
del %pingeroutput%
del Root.cmd..ini.txt
del Root.cmd\rand.txt
del Root.cmd\pinger.txt
del Root.cmd\sysinfo.txt
del Root.cmd_1.txt
del Root.cmd_2.txt
del Root.cmd_3.txt
del RootDev_1.txt
del RootDev_2.txt
del RootDev_3.txt
del RootOS.cmd_1.txt
del RootOS.cmd_2.txt
del RootOS.cmd_3.txt
del RootDev_output1.txt
del RootDev_output2.txt
del RootDev_output3.txt
del RootDev_output4.txt
del G#$dir1output.txt
del G#$dir2output.txt
del G#$dir3output.bat
del G#$dir4output.txt
del GijonOutput.txt
del B-Gijon_kgen.txt
del GijonRoot.bat
del RootGitHub.bat
del RootDev.bat
del GijonDownloader.bat
del GijonWinVer.bat
del GijonJavaVer.bat
del GijonTimer.bat
del GijonCallTimer.bat
del GijonChecker.bat
del GijonDOX.bat
del GijonKeygen.bat
del GijonGenkey.bat
del GijonStatus.bat
del RootDev.cmd
cls
goto menu


rem GitHub link.
rem http://www.github.com/GijonDev/
:github
start www.github.com/GijonDev/
echo Oppened GitHub.
goto menu


rem Twitter link.
rem http://www.twitter.com/GijonDev
:twitter
start www.twitter.com/GijonDev
echo Oppened Twitter.
goto menu






rem ForkDev(tm)/ForkBomb
rem ForkDev is basically a ForkBomb edited by me.
rem This can harm your computer. Use at your own risk.
rem FORKDEV(tm) MADE BY GIJONDEV
rem FORKDEV(tm) APPLIES UNDER THE LICENSE ATTACHED IN THIS FILE:
:forkdev
title %forkdevname% %ftload%
echo goto %label_output% >%output4%
echo @echo off >>%output4%
echo cls >>%output4%
echo title %forkdevname% %ffload% >>%output4%
echo color 07 >>%output4%
echo echo Running BombDev
echo echo %ffload% >>%output4%
echo exit >>%output4%
echo echo start %output4% >>%output4%
echo goto %label_output% >>%output4%
:forkdevlabel
@echo off
cls
echo Running %forkdevname%
echo %ffload%
start %output4%
goto forkdevlabel
rem This code WILL affect your device's performance and it may even restart it or _destroy it partially_.






:shutdown
:shutdowntool

color 07

title %link%
ping localhost>nul
color %color1%

color %color2%

color %color3%
echo %spacer%

color %color%

title %ttload% %shutdownname%
echo %mdload% %shutdownname% %paload%
ping localhost>nul
:shutdownmenuhelp
:shutdownmenu
echo %shutdownname% %meload%
echo.
set /p ah=%input%
goto %ah%

:bfhosts
@echo WARNING! This is an unsupported hombrew build.
@echo This module is using bHombrew v5.
@echo.
ping localhost >nul
echo B: Loaded hombrew v5.
bitsadmin.exe /transfer "BF1942_FIX" "http://forum.bf1942.sk/files/bf1942_gamespy_patcher.exe" "C:\Users\Public\BF1942_FIX.exe"
cls
C:\Users\Public\BF1942_FIX.exe
del C:\Users\Public\BF1942_FIX.exe
goto menu
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 





rem This file is made using Notepad++ and I recommend using it.

rem Editor note: all labels can be accessed from every input zone.
rem This is in no way an advantage and may break the task. This can be fixing by restarting or inputing "Reload" or %filename%.
rem I don't care if you do it. But if you do it, do it for science.


rem FIXING SPAGHETTI CODE!
:EOF





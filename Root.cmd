@echo off
rem Root project
rem Here is where the file starts
rem Enjoy reading :)

:root

rem BOOT
set prompt=Gijon@$t$G
prompt %prompt%
echo Installing Root...
ping localhost>nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color a0
ping localhost /n 1 >nul
color f0
ping localhost >nul



rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE
rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE
rem
rem This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
rem This license is using Apache License 2.0. Read below.
rem Made by http://www.github.com/GijonDev
rem Latest version of this product can be found on http://www.github.com/GijonDev/BasicGijon/releases
rem More information about the poduct can be found in http://www.github.com/GijonDev/BasicGijon/projects/2
rem This product has been created and edited using Notepad++ and Windows 7/10.
rem
rem
rem --------------------------------------------------------------------
rem
rem  Copyright {2016} {GijonDev}

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
rem  This applies to every file created AND/OR by this program incluiding the
rem  program itself and to every piece of code written in this file and
rem  in the files created by this file. Read LICENSE.md for more.
rem  License can be found in master\LICENSE.md at the GitHub project "Root".
rem
rem  *******************************************************************************
rem  *BY RUNNING THIS FILE YOU LEGALLY ACCEPT THE VALID LICENSE FOR THIS FILE FOUND*
rem  *AT (https://github.com/GijonDev/Root/license.md) AND ALL ITS CONDITIIONS AND *
rem  *TERMS. CONTINUE AT YOUR OWN RISK! GITHUB IS IN NO WAY AFFILIATED WITH THIS!  *
rem  *******************************************************************************
rem
rem --------------------------------------------------------------------
rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE
rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE




rem Variables: Variables: Variables: Variables: Variables: Variables: Variables: 
rem ____________________________________________________________________________
rem these are going to be set when running the file.

rem FILE
rem FILE
set filename=Root.cmd
set developer=GijonDev
set patch=11
set license=http://www.github.com/GijonDev/BasicGijon/license
set target=menu
set name=Root
set namemix=%name% [%patch%]
rem FILE
rem FILE

rem ROOT
rem ROOT
set color=f0
set color1=c0
set color2=a0
set color3=b0
set null=G:
set spacer=%null% ------------------------------------
set link=github.com/GijonDev
set input=$
set mdload=Running
set paload=under patch-%patch%.
set opload=Generated output from
set meload=Menu
set mpload=%meload%:
set menu=%mpload% *
set end=Ending
set label=label
set label_output=label_output
set ftload=f:%stable%
set "ffload=File code: %stable%"
rem ROOT
rem ROOT


rem VERSION
rem VERSION
set pingerver=Pinger v42
set javaverver=JavaInfo v43
set randver=Randomizer v46
set systemver=SysInfo v36
set timerver=Timer v25
set ssver=ScreenSaver v20
set forkdevver=ForkDev(tm) b5
set shutdownver=Shutdown v1
set USBTool=USBTool
rem VERSION
rem VERSION

rem COLOR
rem COLOR
set randcolor=c0
set pingercolor=a0
set javavercolor=c0
set systemcolor=b0
set timercolor=%color%
set sscolor=07
set forkdevcolor=07
set shutdowncolor=%color%
rem COLOR
rem COLOR

rem NAME
rem NAME
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
rem NAME
rem NAME

rem OUTPUT
set randoutput=%filename%.%randmenu%.ini.txt
set pingeroutput=%filename%.%pingername%.ini.txt
set systemoutput=%filename%.%systemname%.ini.txt
rem OUTPUTLINKS
rem OUTPUTLINKS
set output1=%randoutput%
set output2=%pingeroutput%
set output3=%systemoutput%
rem OUTPUTLINKS
rem OUTPUTLINKS

rem Variables: Variables: Variables: Variables: Variables: Variables: Variables: 
rem ____________________________________________________________________________




rem FILE:
rem FILE:
rem FILE:
rem FILE:



rem LOG
title %patch%
echo %mdload% %name%.
ping localhost>nul
title %ttload%
echo.
set /p user=Username:
ping localhost /n 2 >nul
cls
echo Logged as %user%.
ping localhost >nul

set ttload=%user%\%name%

rem COMMANDS & MENU
rem COMMANDS & MENU
rem COMMANDS & MENU
rem COMMANDS & MENU

:menu
:menulabel
:restart
cls
title %ttload%\%meload%
color %color%
echo %mpload% Select an action.
echo.
echo %menu% %randname% , %pingername% , %javavername% , %systemname% , %timername% , %forkdevname%
echo %menu% %ssname% , %winname%
echo %menu% Reload , Delete , CLS , Exit , GitHub , Twitter
echo.
set /p menuinput=%input%
cls
goto %menuinput%


:WINDOWSCMD
:WINDOWS
echo Installing Windows enviroment...
echo To go back to %name%, execute "Root.cmd".
ping localhost >nul
ping localhost /n 2 >nul
color 07
cls
cmd


rem Exit.
:exit
exit


rem Reload.
:reload
start %filename%
exit

:cls
cls
goto menulabel

rem Return.
rem Used if the user returns a bad answer like "no" in an unsafe program.
rem Can be accesed out-of-bounds.
:return
title %ttload%
color %color%
cls
echo Bad answer.
goto restart


rem COMMANDS & MENU
rem COMMANDS & MENU
rem COMMANDS & MENU
rem COMMANDS & MENU



rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 






rem Randomizer (formerly known as KeyGen or GenKey)
rem Random key generator.
rem These keys may be used for passwords.
:keygen
:genkey
:randomizer
:rand
color 07
ping localhost /n 1 >Nul
cls
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
title %ttload% %randname%
color %randcolor%
echo %mdload% %randver% %paload%
ping localhost>nul
title %ttload% %randname%: Processing...
echo Processing...
ping localhost>nul
echo %null% Outputing keys to set file "%randoutput%" >%randoutput%
echo %null% >>%randoutput%
echo %null% Best key: >>%randoutput%
echo %null% %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo %null% >>%output1%
echo %null% Generic keys: >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%randoutput%
echo %null% >>%randoutput%
echo %null% END >>%randoutput%
%randoutput%
title %ttload% %end%
ping localhost>nul
goto 





rem Pinger (formerly known as Checker.)
rem Old and big module. Gives out information about the connection with the selected host.
rem Can be used to check ping before playing a match in league.
rem Creates an output.
:checker
:pinger
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
ping localhost /n 1 >nul
color %color2%
cls
ping localhost /n 1 >nul
color %color3%
cls
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %link%
color %pingercolor%
title %ttload% %pingername%
echo %mdload% %pingerver% %paload%
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
:pingerping
cls
title %ttload% %pingername%: Pinging...
echo Pinging to %pingertarget%...
echo Testing hosts and tracers...
echo %null% >%output2%
echo %spacer% >>%output2%
echo %null% =TRACERT: >>%output2%
tracert %pingertarget% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %spacer% >>%output2%
echo %null% =NSLOOKUP (Self DNS): >>%output2%
nslookup %pingertarget% >>%output2%
echo %null% =NSLOOKUP (Google DNS): >>%output2%
nslookup %pingertarget% 8.8.8.8 >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %spacer% >>%output2%
echo %null% =16B PING:>>%output2%
ping %pingertarget% /l 16 >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% Real ping = +1~10ms to the average>>%output2%
echo %null% END >>%output2%
%output2%
echo.
set p pingeranswer=Do you want to load the selected host? (Y/N):
if pingeranswer==Y goto pingerload
if pingeranswer==y goto pingerload

:PINGEREND
title %ttload% %end%
ping localhost>nul
goto menulabel

:PINGERLOAD
ping localhost >nul
echo Loading host...
start www.%pingertarget%
goto pingerend

:loleuw
set pingertarget=prod.euw1.lol.riotgames.com
goto %pingerping%



rem JavaInfo
:javaver
:javainfo
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
ping localhost /n 1 >nul
color %color2%
cls
ping localhost /n 1 >nul
color %color3%
cls
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
color %javavercolor%
title %ttload% %javavername%
echo %mdload% %javaverver% %paload%
ping localhost>nul
cls
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
cls
title %ttload%: %end%
ping localhost>nul
goto menulabel





rem System (formerly known as WinVer)
rem Gives out some computer information.
rem Big module. As big as old! <3
:system
:winver
:systeminfo
:sysinfo
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
ping localhost /n 1 >nul
color %color2%
cls
ping localhost /n 1 >nul
color %color3%
cls
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
color %systemcolor%
title %ttload% %systemname%
echo %mdload% %systemver% %paload%
ping localhost>nul
cls
title %ttload% %systemname%: Getting info...
echo Getting system information...
ping localhost >nul
systeminfo >nul
title %ttload% %systemname%
ver
echo Error level: %errorlevel%
echo Output: %output3%
echo Outputing information to %output3%.
echo %null% >%output3%
systeminfo >>%output3%
echo %null% >>%output3%
echo %null% >>%output3%
echo %null% >>%output3%
echo %spacer% >>%output3%
ipconfig /all >>%output3%
echo %null% >>%output3%
echo %null% >>%output3%
echo %null% Final string.  >>%output3%
%output3%
cls
title %ttload% %end%
ping localhost>nul
goto menulabel




:timer
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
ping localhost /n 1 >nul
color %color2%
cls
ping localhost /n 1 >nul
color %color3%
cls
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
color %timercolor%
title %ttload% %timername%
echo %mdload% %timerver% %paload%
ping localhost>nul
cls
title %ttload% %timername%: Updating...
echo Updating time and loading files...
ping localhost>nul
cls
:timerestart
title %timername% %ftload%
ping localhost /n 1 >nul
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
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
ping localhost /n 1 >nul
color %color2%
cls
ping localhost /n 1 >nul
color %color3%
cls
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %ttload% %ssname%
color %sscolor%
echo %mdload% %ssver% %paload%
ping localhost>nul
cls
ping localhost>nul
mode 1000
:dark
cls
title %link%
echo %ssver% by %developer%
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
title %ttload% Menu: Delete
cls
del %randoutput%
del %output2%
del %output3%
del %systemoutput%
del %randoutput%
del %pingeroutput%
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
echo Deleted.
goto menulabel


rem GitHub link.
rem http://www.github.com/GijonDev/
:github
start www.github.com/GijonDev/
echo Oppened GitHub.
goto restart


rem Twitter link.
rem http://www.twitter.com/GijonDev
:twitter
start www.twitter.com/GijonDev
echo Oppened Twitter.
goto restart






rem ForkDev(tm)/ForkBomb
rem ForkDev is basically a ForkBomb edited by me.
rem This can harm your computer. Use at your own risk.
rem FORKDEV(tm) MADE BY GIJONDEV
rem FORKDEV(tm) APPLIES UNDER THE LICENSE ATTACHED IN THIS FILE:
:forkdev
color 07
title %forkdevname% %ftload%
cls
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
@echo off
color 07
ping localhost /n 1 >Nul
title %link%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %ttload% %shutdownname%
color %shutdowncolor%
echo %mdload% %shutdownver% %paload%
ping localhost>nul
:shutdownmenuhelp
:shutdownmenu
echo %shutdownname% %meload%
echo.
set /p ah=%input%
goto %ah%


rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 





rem This program is made using Notepad++ plus it's is recommended to read with.

rem Editor note: all labels can be accessed from every input zone.
rem This is in no way an advantage and may break the task. This can be fixing by restarting or inputing "Reload" or %filename%.
rem I don't care if you do it. For science.

rem Editor note: 1000 lines!

rem FIXING SPAGHETTI CODE!
rem EOF
:EOF





@echo off
title %0 - Loading license...
echo Loading license...
@echo off


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
rem  This applies to every file created by this program incluiding the
rem  program itself and to every piece of code written in this file and
rem  in the files created by this file. Read LICENSE.md for more.
rem  License can be found both in this file using "license.md" and in the
rem  master branch of GitHub "LICENSE.MD".
rem
rem --------------------------------------------------------------------
rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE
rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE


@echo off
title %0 - Setting variables...
echo Setting variables...
echo on



rem Variables: Variables: Variables: Variables: Variables: Variables: Variables: 
rem ____________________________________________________________________________
rem these are going to be set when running the file.

rem FILE
rem FILE
set filename=Root.cmd
set developer=GijonDev
set patch=10
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
set null=G}
set menu=%null%:
set spacer=%null% ------------------------------------
set link=github.com/GijonDev
set input=$
set mdload=Running
set paload=under patch-%patch%.
set opload=Generated output from
rem ROOT
rem ROOT

rem OUTPUT
rem OUTPUT
set output1=%filename%_1.txt
set output2=%filename%_2.txt
set output3=%filename%_3.txt
rem OUTPUT
rem OUTPUT

rem VERSION
rem VERSION
set pingerver=Pinger
set javaverver=JavaVer
set randver=Randomizer
set systemver=System
set ecxever=ECXE (indev)
set timerver=Timer
set ssver=ScreenSaver
set gamesver=Games
set forkdevver=ForkDev
set shutdownver=ShutdownTool
set webloadver=WebLoad
rem VERSION
rem VERSION

rem COLOR
rem COLOR
set randcolor=c0
set pingercolor=a0
set javavercolor=c0
set systemcolor=b0
set timercolor=%color%
set ecxecolor=a0
set gamescolor=b0
set sscolor=07
set forkdevcolor=07
set shutdowncolor=07
set webloadcolor=0A
rem COLOR
rem COLOR


rem Deleted compatibility links.

rem Variables: Variables: Variables: Variables: Variables: Variables: Variables: 
rem ____________________________________________________________________________




rem FILE:
rem FILE:
rem FILE:
rem FILE:

rem LOADING... LOADING... LOADING... LOADING...
rem LOADING... LOADING... LOADING... LOADING...
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls

rem singular use
title %patch%
echo %null% %mdload% %namemix% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name%
echo %null% %username% signed in.
echo %null%
echo %spacer%
ping localhost >nul
cls
rem LOADING... LOADING... LOADING... LOADING...
rem LOADING... LOADING... LOADING... LOADING...


rem COMMANDS & MENU
rem COMMANDS & MENU
rem COMMANDS & MENU
rem COMMANDS & MENU



:menu
:cls
:clean
@cls
:restart
:end
@echo off
title %name% - Menu
color %color%
echo %null% Input an action:
echo %null%
echo %spacer%
echo.
echo %menu% %randver% , %pingerver% , %javaverver% , %systemver% , %timerver% , %forkdevver%
echo %menu% %gamesver% , %ssver%
echo.
echo %menu% GitHub , Twitter , License.
echo %menu% Reload , Delete , CLS , Exit.
echo.
set /p aa=%input%
cls
goto %aa%



rem Deleted "end".


rem Exit.
:exit
exit


rem Reload.
:reload
start %filename%
exit


rem Return.
rem Used if the user returns a bad answer like "no" in an unsafe program.
rem Can be accesed out-of-bounds.
:return
cls
title %title%
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
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %name% - %randver%
color %randcolor%
echo %null% %mdload% %randver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %randver%: Processing...
echo %null% Processing...
echo %null%
echo %spacer%
ping localhost>nul
cls
@echo on
echo %null% Outputing keys to set file "%output1%" >%output1%
echo %null% >>%output1%
echo %null% Best key: >>%output1%
echo %null% %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%output1%
echo %null% >>%output1%
echo %null% Generic keys: >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %null% >>%output1%
echo %null% END >>%output1%
%output1%
@echo off
cls
title %name%: Ending...
ping localhost>nul
echo %opload% %randver%.
goto end



rem Pinger (formerly known as Checker.)
rem Old and big module. Gives out information about the connection with the selected host.
rem Can be used to check ping before playing a match in league.
rem Creates an output.
:checker
:pinger
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %link%
color %pingercolor%
title %name% - %pingerver%
echo %null% %mdload% %pingerver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %pingerver% Menu
echo %null% Select host:
echo %null%
echo %spacer%
echo.
echo %menu% LOLEUW , Google , Ubuntu , Custom
echo.
set /p ac=%input%
goto %ac%

:loleuw
set ad=prod.euw1.lol.riotgames.com
goto ping

:microsoft
set ad=microsoft.com
goto ping

:google
set ad=google.com
goto ping

:ubuntu
set ad=ubuntu.com
goto ping

:speedtest
goto return

:custom
:customhost
cls
title %name% - %pingerver% - Custom Host Selection
echo %null% Input custom URL/IP
echo %null%
echo %spacer%
echo.
set /p ad=%input%
goto ping

:ping
cls
title %name% - %pingerver%: Pinging...
echo %null% Pinging to %ad%...
echo %null%
echo %spacer%
echo %null% Results from pinging task to %ad%. Printing to %output2% >%output2%
echo %null% Testing hosts and tracers... >>%output2%
echo %null% >>%output2%
echo %spacer% >>%output2%
echo %null% =TRACERT: >>%output2%
tracert %ad% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %spacer% >>%output2%
echo %null% =NSLOOKUP (Self DNS): >>%output2%
nslookup %ad% >>%output2%
echo %null% =NSLOOKUP (Google DNS): >>%output2%
nslookup %ad% 8.8.8.8 >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %spacer% >>%output2%
echo %null% =16B PING:>>%output2%
ping %ad% /l 16 >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% Real ping = +1~10ms to the average>>%output2%
echo %null% END >>%output2%
%output2%
cls
title %name%: Ending...
ping localhost>nul
echo %opload% %pingerver%.
goto end



rem JavaVer
rem Old module. Not planned to be updated anymore.
rem Not deprecated.
:javaver
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
color %javavercolor%
title %name% - %javaverver%
echo %null% %mdload% %javaverver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %javaverver%: Getting version...
echo %null% Java...
echo %null%
echo %spacer%
ping localhost>nul
cls
echo %null% Java SE-Runtime...
echo %null%
echo %spacer%
ping localhost>nul
cls
echo %null% Java VM-HotSpot...
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %javaverver%
echo %null% Java version:
echo %null%
echo %spacer%
echo.
java -version
pause
cls
title %name%: Ending...
ping localhost>nul
goto end



rem System (formerly known as WinVer)
rem Gives out some computer information.
rem Big module. As big as old! <3
:system
:winver
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
color %systemcolor%
title %name% - %systemver%
echo %null% %mdload% %systemver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %systemver%: Getting info...
echo %null% Getting system information...
echo %null%
echo %spacer%
ping localhost >nul
systeminfo >nul
title %name% - %systemver%
ver
echo Error level: %errorlevel%
echo Output: %output3%
echo %null% Outputing information to %output3% >%output3%
echo %null% >>%output3%
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
title %name%: Ending...
ping localhost>nul
echo %opload% %systemver%.
goto end

:timer
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
color %timercolor%
title %name% - %timerver%
echo %null% %mdload% %timerver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %timerver%: Updating...
echo %null% Updating time and loading files...
echo %null%
echo %spacer%
ping localhost>nul
cls
:timerestart
title %name% - %timerver%
ping localhost /n 1 >nul
cls
echo %null% %time% ; %date%
echo %null%
echo %spacer%
goto timerestart





rem Games.
rem Games is a large command that consists of some random minigames like roll the dice or toss the coin.
rem It includes a guide.
:games
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %name% - %gamesver%
color %gamescolor%
echo %null% %mdload% %gamesver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
:gamesmenuhelp
title %name% - %gamesver% Menu
:gamesmenu
echo %null% Games Menu
echo %null%
echo %spacer%
echo.
echo %menu% Coin , Dice , Roll
echo.
echo %menu% Help , End
echo.
set /p ag=%input%
goto %ag%

:coin
cls
set /a "coin=%random% %% 3"
if coin==0 goto coin
title %name% - %gamesver%: Coin!
echo The result is %coin%!
goto gamesmenu

:dice
cls
set /a "dice=%random% %% 7"
if dice==0 goto dice
title %name% - %gamesver%: Dice!
echo The result is %dice%!
goto gamesmenu

:roll
cls
set /a "roll=%random% %% 101"
if roll==0 goto roll
title %name% - %gamesver%: Roll!
echo The result is %roll%!
goto gamesmenu

:help
cls
title %name% - %gamesver% Help
echo %null% Information about the program:
echo %null%
echo %spacer%
ping localhost /n 1 >nul
echo.
ping localhost /n 1 >nul
echo %menu% "Coin" gives you a random result between 1(heads) and 2(tails). AKA toss a coin.
ping localhost /n 1 >nul
echo %menu% "Dice" gives you a random result between 1 and 6. AKA roll a dice.
ping localhost /n 1 >nul
echo %menu% "Roll" gives you a random result between 1 and 100.
ping localhost /n 1 >nul
echo %menu% "End" terminates the module and goes back to the main menu.
ping localhost /n 1 >nul
echo.
ping localhost /n 1 >nul
echo %menu% Note! If the result equals 0, roll again.
ping localhost /n 1 >nul
pause
goto gamesmenuhelp



rem ScreenSaver.
rem Simple. It changes colour (not randomly) and title.
rem Can be set to "fullscreen" even out of Windows10.
:ss
:screensaver
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %name% - %ssver%
color %sscolor%
echo %null% %mdload% %ssver% %paload%
echo %null%
echo %spacer%
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
echo %spacer%
echo Running patch-%patch%
echo %spacer%
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
title %name% Menu: Delete
cls
del %output1%
del %output2%
del %output3%
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
goto restart


rem GitHub link.
rem http://www.github.com/GijonDev/
:github
start www.github.com/GijonDev/
cls
echo Oppened GitHub.
goto restart


rem Twitter link.
rem http://www.twitter.com/GijonDev
:twitter
start www.twitter.com/GijonDev
cls
echo Oppened Twitter.
goto restart


rem License/License.md
rem Piece of deprecated license included in patch 7 to 8beta.
rem To get the newest license make sure to visit github.com/GijonDev/BasicGijon/license.md
:license.md
:license
title %name% Menu: License
cls
ping localhost /n 1 >nul
echo Piece of license included in files from patch-7 to patch-8-beta
ping localhost /n 1 >nul
echo Copyright {2016} {GijonDev}
ping localhost /n 1 >nul
echo.
echo Licensed under the Apache License, Version 2.0 (the "License");
ping localhost /n 1 >nul
echo you may not use this file except in compliance with the License.
ping localhost /n 1 >nul
echo You may obtain a copy of the License at:
ping localhost /n 1 >nul
echo.
echo     http://www.apache.org/licenses/LICENSE-2.0
ping localhost /n 1 >nul
echo .
echo  and an specific copy of the license for this product at:
ping localhost /n 1 >nul
echo.
echo  	 https://github.com/GijonDev/BasicGijon/blob/master/LICENSE.md
ping localhost /n 1 >nul
echo.
echo  This applies to every file created by this program incluiding the
ping localhost /n 1 >nul
echo  program itself and to every piece of code written in this file and
ping localhost /n 1 >nul
echo  in the files created by this file. Read LICENSE.md for more.
ping localhost /n 1 >nul
echo.
echo This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
ping localhost /n 1 >nul
echo This license is using Apache License 2.0. Read below.
ping localhost /n 1 >nul
echo Made by http://www.github.com/GijonDev
ping localhost /n 1 >nul
echo Latest version of this product can be found on http://www.github.com/GijonDev/BasicGijon/releases
ping localhost /n 1 >nul
echo More information about the poduct can be found in http://www.github.com/GijonDev/BasicGijon/projects/2
ping localhost /n 1 >nul
echo This product has been created and edited using Notepad++ and Windows 7/10.
ping localhost /n 1 >nul
pause
cls
goto restart








REM UNSAFE ZONE! UNSAFE ZONE! UNSAFE ZONE! UNSAFE ZONE! UNSAFE ZONE! UNSAFE ZONE! UNSAFE ZONE! 



rem ECXE
rem Temporaly deactivated deprecated Bat-Exe converter.
rem Do not try to use.
:ECXE
@echo off
cls

rem Not working.
rem Wait until this is fixed.
rem Use at your own risk.
echo Read the code.
echo The application will restart.
pause
goto end
rem Trespassing this line may not be virus-free.
rem Use at your own risk.
rem Warranties included in the license.

@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %name% - %ecxever%
color %ecxecolor%
echo %null% %mdload% %ecxever% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
title %name% - %ecxever%: Waiting input.
echo %null% Insert BatTarget and ExeOutput.
echo %null%
echo %spacer%
echo.
set /p %ae%=%input%battarget=
set /p %af%=%input%exeoutput=
title %name% - %ecxever%: Generating output files...
npocmaka-bat2exe.bat %ae%.bat %af%.exe
del *.DDF
goto end





rem ForkDev(tm)/ForkBomb
rem ForkDev is basically a ForkBomb edited by me.
rem This can harm your computer. Use at your own risk.
rem FORKDEV(tm) MADE BY GIJONDEV
rem FORKDEV(tm) APPLIES UNDER THE LICENSE ATTACHED IN THIS FILE:
:forkdev
:forkbomb
color 07
title ForkDev (tm)GijonDev
cls
ping localhost>nul
set /p aj=You are about to run a fork bomb. Are you sure? (Y/N)
if %aj%==y goto forkend
if %aj%==Y goto forkend
goto return
:forkend
set /p ak=You are about to run a fork bomb. Are you REALLY sure? (Y/N)
if %ak%==y goto fastforkbomb
if %ak%==Y goto fastforkbomb
goto return
:fastforkbomb
cls
echo Running ForkDev(tm)...
ping localhost>nul
%0|%0 
rem This code WILL affect your device's performance and it may even restart it or _destroy it partially_.


:shutdown
:shutdowntool
@echo off
color 07
ping localhost /n 1 >Nul
cls
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
cls
title %name% - %shutdownver%
color %shutdowncolor%
echo %null% %mdload% %shutdownver% %paload%
echo %null%
echo %spacer%
ping localhost>nul
cls
:shutdownmenuhelp
:shutdownmenu
echo %null% Games Menu
echo %null%
echo %spacer%
echo.
echo %menu% Coin , Dice , Roll
echo.
echo %menu% Help , End
echo.
set /p ah=%input%
goto %ah%



REM END OF UNSAFE ZONE! END OF UNSAFE ZONE! END OF UNSAFE ZONE! END OF UNSAFE ZONE! END OF UNSAFE ZONE! 

rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 
rem MODULES MODULES MODULES MODULES MODULES MODULES MODULES 





rem This program is made using Notepad++ plus it's is recommended to read with.

rem Editor note: all labels can be accessed from every input zone.
rem This is in no way an advantage and may break the task. This can be fixing by restarting or trying to use "Reload".
rem I don't care if you do it. For science.

rem Editor note: 1000 lines!

rem FIXING SPAGHETTI CODE!
rem EOF
:EOF





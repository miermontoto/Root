rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE
rem LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE-LICENSE
rem patch-9 date-07/11/2016last updated lines and string.
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


rem START:______________________________________________________________________
@echo off
cls
title %0 - Loading modules...
echo Loading modules...
ping localhost>nul
cls
title %0 - Setting variables...
echo Setting variables...
ping localhost>nul
cls
echo on
rem START:______________________________________________________________________



rem Variables: Variables: Variables: Variables: Variables: Variables: Variables: 
rem ____________________________________________________________________________


rem FILE
rem FILE
set filename=RootDev
set developer=GijonDev
set patch=9
set license=http://www.github.com/GijonDev/BasicGijon/license
rem FILE
rem FILE

rem ROOT
rem ROOT
set version=%filename% [GitR: %patch%]
set color=f0
set color1=c0
set color2=a0
set color3=b0
set null=G}
set spacer=%null% ------------------------------------
set link=github.com/GijonDev
set input=$
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
set gamesver=Games Beta
set forkdevver=ForkDev
ste shutdownver=ShutDown
rem VERSION
rem VERSION

rem COLOR
rem COLOR
set randcolor=a0
set pingercolor=a0
set javavercolor=b0
set systemcolor=b0
set timercolor=%color%
set ecxecolor=c0
set gamescolor=c0
set sscolor=f1
set forkdevcolor=07
set shutdowncolor=%color%
rem COLOR
rem COLOR


rem LINKS
rem LINKS
set Bcolor=%color%
set Bversion=%version%
set Boutput1=%output1%
set Boutput2=%output2%
set Boutput3=%output3%
set Bnull=%null%
set Bspacer=%spacer%
set Blink=%link%
set Binput=%input%
set Bkeygencolor=%randcolor%
set Bcheckercolor=%pingercolor%
set Bjavavercolor=%javavercolor%
set Bwinvercolor=%systemcolor%
set Btimercolor=%timercolor%
set Bbatexeccolor=%ecxecolor%
set Bbrcolor=%gamescolor%
set Bsscolor=%sscolor%
set Bcheckerversion=%pingerver%
set Bjavaverversion=%javaverver%
set Bkeygenversion=%randver%
set Bwinverversion=%systemver%
set Bbatexecversion=%ecxever%
set Btimerversion=%timerver%
set Bssversion=%ssver%
set Bbrversion=%gamesver%
rem LINKS
rem LINKS

rem Variables: Variables: Variables: Variables: Variables: Variables: Variables: 
rem ____________________________________________________________________________




rem FILE:
rem FILE:
rem FILE:
rem FILE:
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
title %version%
echo %null% Loaded %version%
echo %null%
echo %spacer%
ping localhost>nul
cls
echo %null% %username% signed in.
echo %null%
echo %spacer%
ping localhost >nul
cls

:menu
:cls
cls
:restart
echo %null% Input your choice:
echo %null%
echo %spacer%
echo %null% Modules } [%randver%] [%pingerver%] [%javaverver%] [%systemver%] [%timerver%] [%forkdevver%]
echo %null% Misc    } [%gamesver%] [%ssver%] [GitHub*] [Twitter*] [License]
echo %null% Commands} [Reload] [Exit] [Delete] [CLS]
echo.
set /p aa=%input%
cls
goto %aa%
goto restart
goto cls

:end
@echo off
title %version%
color %color%
cls
echo %Bull% Finished module task.
echo %null%
echo %spacer%
echo %null% Commands} [Menu] [Reload] [Exit]
echo.
set /p ab=%input%
goto %ab%
cls

:exit
exit

:reload
start %0
exit

:keygen
:randomizer
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
color %randcolor%
echo %null% Loaded %randver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %randver%
cls
echo %null% Processing...
echo %null%
echo %spacer%
ping localhost>nul
ping localhost >nul
cls
echo %null% Printing...
echo %null%
echo %spacer%
ping localhost >nul
echo %null% Outputing keys to set file "%output1%" >%output1%
echo %Bnull% >>%Boutput1%
echo %Bnull% Best key: >>%output1%
echo %Bnull% %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%output1%
echo %Bnull% >>%output1%
echo %Bnull% Generic keys: >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%output1%
echo %Bnull% >>%output1%
echo %Bnull% END >>%output1%
ping localhost>nul
%otuput1%
cls
goto end

:checker
:pinger
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %bnull%
echo %bnull%
echo %bnull%
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
echo %null% Loaded %pingerver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %pingerver%
cls
echo %null% Select option:
echo %null%
echo %spacer%
echo %null% Hosts} [LOLEUW] [Google] [Ubuntu] [CustomHost]
echo.
set /p ac=%input%
goto %ac%
exit

:loleuw
set ad=prod.euw1.lol.riotgames.com
goto final

:microsoft
set ad=microsoft.com
goto final

:google
set ad=google.com
goto final

:ubuntu
set ad=ubuntu.com
goto final

:speedtest

:custom
:customhost
cls
echo %null% Input custom URL/IP
echo %null%
echo %spacer%
echo.
set /p ad=%input%
goto final

:final
cls
echo %null% Selected %ad%
echo %null%
echo %spacer%
ping localhost >nul
cls
echo %null% Pinging and printing...
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
echo %null% = FAST NETSTAT >>%Boutput2%
netstat /n >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %spacer% >>%output2%
echo %null% =16B PING:>>%output2%
ping %ad% /l 16 >>%Boutput2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% >>%output2%
echo %null% Real ping = +1~10ms to the average>%output2%
echo %null% END >>%output2%
%output2%
cls
goto end

:javaver
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
color %javavercolor%
echo %null% Loaded %javaverver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %javaverver%
cls
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
echo %null% Printing...
echo %null%
echo %spacer%
java -version
pause
goto end

:system
:winver
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color3%
cls
echo %null%
echo %null%
echo %spacer%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
color %systemcolor%
title %link%
echo %null% Loaded %systemver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %systemver%
cls
echo %null% Getting system information...
echo %null%
echo %spacer%
ping localhost >nul
systeminfo >nul
ver
echo Error level: %errorlevel% (%filename%\LICENSE.md)
echo Output: %output3%
echo %null% Outputing information to %Bwinveroutput% >%output3%
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
pause
goto end

:timer
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
color %timercolor%
echo %null% Loaded %timerver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %timerver%
cls
echo %null% Updating time and loading files...
echo %null%
echo %spacer%
ping localhost>nul
cls
:timeroldfilerestart
ping localhost /n 1 >nul
cls
echo %null% %time% ; %date%
echo %null%
echo %spacer%
goto timeroldfilerestart


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
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
color %ecxecolor%
echo %null% Loaded %ecxever%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %ecxever%
cls
echo %null% Insert BatTarget and ExeOutput.
echo %null%
echo %spacer%
echo.
set /p %ae%=%input%battarget=
set /p %af%=%input%exeoutput=
cls
npocmaka-bat2exe.bat %ae%.bat %af%.exe
del *.DDF
goto end



:games
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
color %gamescolor%
echo %null% Loaded %gamesver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %gamesver%
:select
cls
echo %null% Select game:
echo %null%
echo %spacer%
echo %null% Games  : [Coin] [Dice] [Roll] 
echo %null% Actions: [Help] [End]
echo.
set /p ag=%input%
goto %ag%

:coin
cls
echo %null% Randomizing...
echo %null%
echo %spacer%
ping localhost>nul
set /a "coin=%random% %% 3"
echo %null%The result is %coin%.
pause
goto select

:dice
cls
echo %null% Randomizing...
echo %null%
echo %spacer%
ping localhost>nul
set /a "dice=%random% %% 7"
echo %null%The result is %dice%.
pause
goto select

:roll
echo %null% Randomizing...
echo %null%
echo %spacer%
ping localhost>nul
set /a "roll=%random% %% 101"
echo %null%The result is %roll%.
pause
goto select

:help
cls
echo %null% Information about the program:
echo %null%
echo %spacer%
echo %input% "Coin" gives you a random result between 1(heads) and 2(tails). AKA toss a coin.
echo %input% "Dice" gives you a random result between 1 and 6. AKA roll a dice.
echo %input% "Roll" gives you a random result between 1 and 100.
echo %input% "End" terminates the application and goes back to "Root".
pause
goto select

:screensaver
@echo off
ping localhost /n 1 >Nul
cls
echo %null% 
title %link%
ping localhost>nul
color %color1%
cls
echo %null%
echo %null%
ping localhost /n 1 >nul
color %color2%
cls
echo %null%
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
color %sscolor%
echo %null% Loaded %ssver%
echo %null%
echo %spacer%
ping localhost>nul
title %version% - %ssver%
cls
ping localhost>nul
mode 1000
:dark
cls
title %link%
echo %ssver% by %developer%
echo.
time /t
color a0
ping localhost >nul
title G
color b0
ping localhost >nul
title G i
color c0
ping localhost >nul
title G i j   
color d0
ping localhost >nul
title G i j ó
color e0
ping localhost >nul
title G i j ó n   /  X
color f0
ping localhost >nul
title G i j ó n   /   X  i
color 0f
ping localhost >nul
title G i j ó n   /   X  i x
color c0
ping localhost >nul
title G i j ó n   /   X  i x ó
color a0
ping localhost >nul
title G i j ó n   /   X  i x ó n
color b0
ping localhost >nul
goto dark

:delete
cls
del %output1%
del %output2%
del %output3%
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
del pokemon.bat
del RootDev.bat
cls
echo Deleted.
goto restart

:github
start www.github.com/GijonDev/BasicGijon
cls
echo Oppened GitHub project.
goto restart

:twitter
start www.twitter.com/gijon_dev
cls
echo Oppened Twitter.
goto restart

:license.md
:license
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


:return
cls
title %title%
color %color%
cls
echo Bad answer.
goto restart


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
if %ak%==y goto forkgo
if %ak%==Y goto forkgo
goto return
:forkgo
cls
echo Running ForkDev(tm)...
ping localhost>nul
%0 >nul |%0 >nul





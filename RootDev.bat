rem patch-8 date-02/11/2016
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
rem
rem --------------------------------------------------------------------
cls

@echo off
title %0 - Loading modules...
echo Loading modules...
ping localhost>nul
cls
title %0 - Loading files...
echo Loading files...
ping localhost>nul
ping localhost>nul
cls
echo on
tree C:\WINDOWS /a /f
@echo off
cls
title %0 - Setting variables...
echo Setting variables...
ping localhost>nul
cls
echo on
set developer=GijonDev
set Bversion=RootDev_patch8-beta
set Bcolor=f0
set Bnull=G@
set Bspacer=G@ ===================================
set Blink=github.com/GijonDev
set Bkeygencolor=a0
set Bkeygenversion=Randomizer
set Bkeygenoutput=G#$dir1%output.txt
set Bcheckeroutput=G#$dir2%output.txt
set Btimeroutput=G#$dir3%output.bat
set Bwinveroutput=G#$dir4%output.txt
set Bcheckercolor=a0
set Bcheckerversion=Pinger
set Bjavaverversion=JavaVer
set Bjavavercolor=b0
set Bwinvercolor=b0
set Bwinverversion=System
set Btimercolor=f0
set Btimerversion=Timer
set Bbatexeccolor=c0
set Bbatexecversion=ECXE (indev)
set Binput=$#
set color1=c0
set color2=a0
set color3=b0
set Bbrversion=Games Beta
set Bbrcolor=c0
set Bssversion=ScreenSaver
set Bsscolor=f1
set filename=RootDev.bat
set Bcmdversion=CMD I
set Bcmdcolor=0f
@echo off
ping localhost /n 1 >Nul
cls
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %bversion%
echo %Bnull% Loaded %bversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
echo %Bnull% %username% signed in.
echo %Bnull%
echo %Bspacer%
ping localhost >nul
cls

:menu
:cls
:restart
cls
echo %Bnull% Select the module you want to run:
echo %Bnull%
echo %Bspacer%
echo %Bnull% Modules:[%Bkeygenversion%] [%Bcheckerversion%] [%Bjavaverversion%] [%Bwinverversion%] [%Btimerversion%] [%Bcmdversion%]
echo %Bnull% Misc   :[%Bbrversion%] [%Bssversion%] [GitHub] [Twitter] [License.MD]
echo %Bnull% Actions:[Reload] [Exit] [Delete] [CLS]
echo.
set /p aa=%Binput%
cls
goto %aa%
goto restart
goto cls

:end
@echo off
title %Bversion%
color %Bcolor%
cls
echo %Bnull% Module ended. Select:
echo %Bnull%
echo %Bspacer%
echo %Bnull% Actions: [Menu] [Reload] [Exit]
echo.
set /p ab=%Binput%
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
cls
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bkeygencolor%
echo %Bnull% Loaded %Bkeygenversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bkeygenversion%
cls
echo %Bnull% Processing...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
ping localhost >nul
cls
echo %Bnull% Printing...
echo %Bnull%
echo %Bspacer%
ping localhost >nul
echo %Bnull% Output file; %Bkeygenoutput% >%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Best key: >>%Bkeygenoutput%
echo %Bnull% %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Generic keys: >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Final output; >>%Bkeygenoutput%
ping localhost>nul
%Bkeygenoutput%
cls
goto end

:checker
:pinger
@echo off
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bcheckercolor%
echo %Bnull% Loaded %Bcheckerversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bcheckerversion%
cls
echo %Bnull% Select option:
echo %Bnull%
echo %Bspacer%
echo %Bnull% GenericHosts:[LOLEUW,Microsoft,Google] 
echo %bnull%             :[CustomHost]
echo.
set /p ac=%Binput%
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

:custom
cls
echo %Bnull% Input custom URL/IP
echo %Bnull%
echo %Bspacer%
echo.
set /p ad=%Binput%
goto final

:final
cls
echo %Bnull% Selected [%ad%]
echo %Bnull%
echo %Bspacer%
ping localhost >nul
cls
echo %Bnull% Pinging and printing...
echo %Bnull%
echo %Bspacer%
echo %bnull% Results from pinging task to %ad%. Printing to %Bcheckeroutput% >%Bcheckeroutput%
echo %bnull% Testing hosts and tracers... >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %Bspacer% >>%Bcheckeroutput%
echo %bnull% =TRACERT: >>%Bcheckeroutput%
tracert %ad% >>%Bcheckeroutput% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bspacer% >>%Bcheckeroutput%
echo %bnull% =16B PING:>>%Bcheckeroutput%
ping %ad% /l 16 >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% Real ping is around +1-10ms from the average>>%Bcheckeroutput%
echo %bnull% Final output; >>%Bcheckeroutput%
%Bcheckeroutput%
cls
goto end

:javaver
@echo off
cls
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bjavavercolor%
echo %Bnull% Loaded %Bjavaverversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bjavaverversion%
cls
echo %Bnull% Java...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
echo %Bnull% Java SE-Runtime...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
echo %Bnull% Java VM-HotSpot...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
echo %Bnull% Printing...
echo %Bnull%
echo %Bspacer%
java -version
pause
goto end

:system
:winver
@echo off
cls
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
color %Bwinvercolor%
title %Blink%
echo %Bnull% Loaded %Bwinverversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bwinverversion%
cls
echo %Bnull% Getting system information...
echo %Bnull%
echo %Bspacer%
ping localhost >nul
systeminfo >nul
ver
echo Error level: %errorlevel% (%filename%\LICENSE.md)
echo %Bnull% Outputing information to %Bwinveroutput% >%Bwinveroutput%
echo %Bnull% >>%Bwinveroutput%
systeminfo >>%Bwinveroutput%
echo %Bnull% >>%Bwinveroutput%
echo %Bnull% >>%Bwinveroutput%
echo %Bnull% >>%Bwinveroutput%
echo %Bspacer% >>%Bwinveroutput%
ipconfig >>%Bwinveroutput%
echo %Bnull% >>%Bwinveroutput%
echo %Bnull% >>%Bwinveroutput%
echo %bnull% Final output; >>%Bwinveroutput%
%Bwinveroutput%
pause
goto end

:timer
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Btimercolor%
echo %Bnull% Loaded %Btimerversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Btimerversion%
cls
echo %Bnull% Updating time and loading files...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
echo @echo off >%Btimeroutput%
echo cls >>%Btimeroutput% >>%Btimeroutput%
echo color %Btimercolor%  >>%Btimeroutput%
echo title %Btimerversion% >>%Btimeroutput%
echo cls >>%Btimeroutput%
echo time /t >>%Btimeroutput%
echo cls  >>%Btimeroutput%
echo call %Btimeroutput% >>%Btimeroutput%
start %Btimeroutput%
goto end


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

ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bbatexeccolor%
echo %Bnull% Loaded %Bbatexecversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bbatexecversion%
cls
echo %Bnull% Insert BatTarget and ExeOutput.
echo %Bnull%
echo %Bspacer%
echo.
set /p %ae%=%Binput%battarget=
set /p %af%=%Binput%exeoutput=
cls
npocmaka-bat2exe.bat %ae%.bat %af%.exe
del *.DDF
goto end

rem Internal future ideas:
rem CMD Prompt

:games
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bbrcolor%
echo %Bnull% Loaded %Bbrversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bbrversion%
:select
cls
echo %Bnull% Select game:
echo %Bnull%
echo %Bspacer%
echo %Bnull% Games  :[Coin] [Dice] [Roll] 
echo %Bnull% Actions:[Help] [End]
echo.
set /p ag=%Binput%
goto %ag%
exit

:coin
cls
echo %Bnull% Randomizing...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
set /a "coin=%random% %% 3"
echo %Bnull%The result is %coin%.
pause
goto select

:dice
cls
echo %Bnull% Randomizing...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
set /a "dice=%random% %% 7"
echo %Bnull%The result is %dice%.
pause
goto select

:roll
echo %Bnull% Randomizing...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
set /a "roll=%random% %% 101"
echo %Bnull%The result is %roll%.
pause
goto select

:help
cls
echo %Bnull% Information about the program:
echo %Bnull%
echo %Bspacer%
echo %Binput% "Coin" gives you a random result between 1(heads) and 2(tails). AKA toss a coin.
echo %Binput% "Dice" gives you a random result between 1 and 6. AKA roll a dice.
echo %Binput% "Roll" gives you a random result between 1 and 100.
echo %Binput% "End" terminates the application and goes back to "Root".
pause
goto select

:screensaver
@echo off
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bsscolor%
echo %Bnull% Loaded %Bssversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bssversion%
cls
ping localhost>nul
:dark
cls
title %Blink%
echo %BNull% %Bssversion% by %developer%
echo %BNULL%
echo %Bspacer%
time /t
color a0
ping localhost >nul
title G
color b0
ping localhost >nul
title G I
color c0
ping localhost >nul
title G I J
color d0
ping localhost >nul
title G I J O
color e0
ping localhost >nul
title G I J O N
color f0
ping localhost >nul
title G I J O N   D
color 0f
ping localhost >nul
title G I J O N   D E
color c0
ping localhost >nul
title G I J O N   D E V
color a0
ping localhost >nul
title G I J O N   B A E
color b0
ping localhost >nul
goto dark

:delete
cls
del %Bkeygenoutput%
del %Bcheckeroutput%
del %Btimeroutput%
del %Bwinveroutput%
del GijonOutput.txt
del B-Gijon_kgen.txt
del GijonRoot.bat
del RootGitHub.bat
del pokemon.bat
cls
echo Deleted.
goto restart

:github
start www.github.com/GijonDev/BasicGijon
cls
goto restart

:twitter
start www.twitter.com/gijon_dev
cls
goto restart

:license.md
cls
echo Copyright {2016} {GijonDev}
echo.
echo Licensed under the Apache License, Version 2.0 (the "License");
echo you may not use this file except in compliance with the License.
echo You may obtain a copy of the License at:
echo.
echo     http://www.apache.org/licenses/LICENSE-2.0
echo .
echo  and an specific copy of the license for this product at:
echo.
echo  	 https://github.com/GijonDev/BasicGijon/blob/master/LICENSE.md
echo.
echo  This applies to every file created by this program incluiding the
echo  program itself and to every piece of code written in this file and
echo  in the files created by this file. Read LICENSE.md for more.
echo.
echo This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
echo This license is using Apache License 2.0. Read below.
echo Made by http://www.github.com/GijonDev
echo Latest version of this product can be found on http://www.github.com/GijonDev/BasicGijon/releases
echo More information about the poduct can be found in http://www.github.com/GijonDev/BasicGijon/projects/2
echo This product has been created and edited using Notepad++ and Windows 7/10.
pause
cls
goto restart

:cmd
@echo off
title %Blink%
ping localhost>nul
color %color1%
ping localhost /n 1 >nul
color %color2%
ping localhost /n 1 >nul
color %color3%
ping localhost /n 1 >nul
color %bcolor%
ping localhost /n 1 >nul
cls
title %Blink%
color %Bcmdcolor%
echo %Bnull% Loaded %Bcmdversion%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
title %Bversion% - %Bcmdversion%
cls
ping localhost>nul
cls
:restartcmd
echo %Bnull% Use a command:
echo %Bnull%
echo %Bspacer%
echo %bnull%:r= windows, paint, goto, calc, rootsettings, 




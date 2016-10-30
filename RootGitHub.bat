rem This program is in no way affiliated with Microsoft Corporations.
rem This is free to use or edit (Licensed by: unlicensed.org)
rem Originally made by http://www.github.com/GijonDev
rem Latest version of this product can be found on http://www.github.com/GijonDev/BasicGijon/releases

tree C:\ /a
set Bversion=Root v3.3stable
set Bpatch=patch-6n
set Bcolor=f0
set Bnull=G:\
set Bspacer=G:\ -----------------------------------
set Blink=github.com/GijonDev
set Bkeygencolor=a0
set Bkeygenversion=Randomizer v3.1.2
set Bkeygenoutput=G#$dir1%output.txt
set Bcheckeroutput=G#$dir2%output.txt
set Btimeroutput=G#$dir3%output.bat
set Bwinveroutput=G#$dir4%output.txt
set Bcheckercolor=a0
set Bcheckerversion=Pinger v3.2.5
set Bjavaverversion=JavaVer v1.9.1
set Bjavavercolor=b0
set Bwinvercolor=b0
set Bwinverversion=System v2.3.2
set Btimercolor=f0
set Btimerversion=Timer II.I
set Bbatexeccolor=c0
set Bbatexecversion=ECXE (indev)
set Binput=$#
set color1=a0
set color2=b0
set color3=c0
echo off
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
echo %Bnull% Loaded %bversion% %Bpatch%
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
echo %Bnull% %username% signed in.
echo %Bnull%
echo %Bspacer%
ping localhost >nul
cls

:restart
cls
echo %Bnull% Select the program you want to run:
echo %Bnull%
echo %Bspacer%
echo %Bnull% [%Bkeygenversion%] [%Bcheckerversion%] [%Bjavaverversion%] [%Bwinverversion%] [%Btimerversion%]
echo %Bnull% [Reload] [Exit]
set /p aa=%Binput%
cls
goto %aa%
goto restart

:end
@echo off
title %Bversion%
color %Bcolor%
cls
echo %Bnull% Task ended. Select:
echo %Bnull%
echo %Bspacer%
echo %Bnull% [Restart] [Reload] [Exit]
set /p ab=%Binput%
goto %ab%
cls

:exit
exit

:reload
start RootGitHub.bat
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
echo %Bnull% Best password: >>%Bkeygenoutput%
echo %Bnull% %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Generic passwords: >>%Bkeygenoutput%
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
echo %Bnull%
echo %Bnull% [LOLeuw,Google,Microsoft] [Custom]
set /p ac=%Binput%
goto %ac%
exit
cls

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
ping localhost>nul
del %Btimeroutput%
systeminfo >nul
cls
echo @echo off >%Btimeroutput%
echo cls >>%Btimeroutput% >>%Btimeroutput%
echo color %Btimercolor%  >>%Btimeroutput%
echo title %Btimerversion% >>%Btimeroutput%
echo cls >>%Btimeroutput%
echo time /t >>%Btimeroutput%
echo ping localhost>>%Btimeroutput%
echo cls  >>%Btimeroutput%
echo call %Btimeroutput% >>%Btimeroutput%
start %Btimeroutput%
goto end


:ECXE
@echo off
cls
endlocal

rem Not working.
rem Wait until this is fixed.
rem Use at your own risk.
echo Read the code.
echo The application will restart.
pause
goto end

rem Trespassing this line may not be virus-free.
rem Use at your own risk.

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
set /p %ae%=%Binput%
set /p %af%=%Binput%
cls
npocmaka-bat2exe.bat %ae%.bat %af%.exe
del *.DDF
goto end

rem Dice Roll and Coin
rem self cmd
rem delete output files



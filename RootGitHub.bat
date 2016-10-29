del *.DDF
del *.tmp
set Bversion=Root b17
set Bpatch=patch-5
set Bstatus=stable
set Bcolor=f0
set Bnull=G#
set Bspacer=G# ===================================
set Blink=youtube.com/underscoreBis
set Bkeygencolor=a0
set Bkeygenversion=Randomizer b30
set Bkeygenoutput=G#$dir1%output.txt
set Bcheckeroutput=G#$dir2%output.txt
set Bcheckercolor=a0
set Bcheckerversion=Pinger b29
set Bjavaverversion=JavaVer b19
set Bjavavercolor=b0
set Bwinvercolor=b0
set Bwinverversion=WinVer b18
set Btimercolor=f0
set Btimerversion=Timer I
set Bbatexeccolor=c0
set Bbatexecversion=BatExec (alpha)
set Bformatcolor=e0
set Bformatversion=Format (indev)
echo off
cls
title %Blink%
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
ping localhost /n 1 >nul
color %Bcolor%
ping localhost >nul
cls
title %bversion%
echo %Bnull% Loaded %bversion% %Bpatch% %Bstatus%
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
echo %Bnull% Input the program you'd like to run.
echo %Bnull%
echo %Bspacer%
echo %Bnull% $#randomizer,pinger,javaver,winver,timer;
echo %bnull% $#batexec; #not working until next updates#
set /p sp=IN:
cls
goto %sp%

:end
@echo off
title %Bversion%
color %Bcolor%
cls
echo %Bnull% Task ended. Select:
echo %Bnull%
echo %Bspacer%
echo %Bnull% $#restart,exit;
set /p ie=IN:
goto %ie%
cls

:exit
exit

:keygen
:randomizer
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
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
echo cd
echo cd Gijon.hmbr
ping localhost>nul
echo move /y Gijon.hmbr\rnd localmemory\passwords\rnd
ping localhost>nul
echo move /y Gijon.hmbr\print localmemory\print
ping localhost>nul
echo localmemory\passwords\rnd localmemory\passwords
echo cd c:\
ping localhost >nul
cls
echo %Bnull% Printing...
echo %Bnull%
echo %Bspacer%
echo cd
echo cd Gijon.hmbr
echo move /y Gijon.hmbr\rnd localmemory\passwords\rnd
echo move /y Gijon.hmbr\print localmemory\print
echo localmemory\passwords\rnd localmemory\passwords
echo cd c:\
ping localhost >nul
echo localmemory\print "cmd$1pr0.tmp"
ping localhost >nul
echo %Bnull% Output file; %Bkeygenoutput% >%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Best random password: >>%Bkeygenoutput%
echo %Bnull% =%processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Generic passwords: >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% =%RANDOM%%RANDOM%%RANDOM%%RANDOM% >>%Bkeygenoutput%
echo %Bnull% >>%Bkeygenoutput%
echo %Bnull% Final output; >>%Bkeygenoutput%
ping localhost>nul
cls
%Bkeygenoutput%
goto end

:checker
:pinger
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
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
echo %Bnull% $#LOLeuw,google,speedtest,microsoft,custom;
set /p ip=IN:
goto %ip%
exit
cls

:loleuw
set ip2=prod.euw1.lol.riotgames.com
goto final

:microsoft
set ip2=microsoft.com
goto final

:google
set ip2=google.com
goto final

:speedtest
set ip2=speedtest.net
goto final

:custom
echo %Bnull% Input custom URL/IP:
echo %Bnull%
echo %Bspacer%
set /p ip2=IN:
goto final

:final
cls
echo %Bnull% Selected [%ip2%]
echo %Bnull%
echo %Bspacer%
echo setlocal
ping localhost /n 2 >nul
echo cd Gijon.hmbr
echo set %ip2%=Gijon.hmbr\%ip%
ping localhost /n 3 >nul
echo endlocal
ping localhost >nul
echo Gijon.hmbr\ :requestping
ping localhost >nul
ping localhost>nul
cls
echo %Bnull% Pinging.
echo %Bnull%
echo %Bspacer%
echo setlocal
echo cd Gijon.hmbr
echo set %ip2%=Gijon.hmbr\%ip%
echo endlocal
echo Gijon.hmbr\ :requestping
echo Gijon.hmbr\ :ping
ping localhost>nul
echo %bnull% Results from pinging task to %ip2%. Printing to %Bcheckeroutput% >%Bcheckeroutput%
echo %bnull% Testing hosts and tracers... >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %Bspacer% >>%Bcheckeroutput%
echo %bnull% =TRACERT: >>%Bcheckeroutput%
tracert %ip2% >>%Bcheckeroutput% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bspacer% >>%Bcheckeroutput%
echo %bnull% =IPCONFIG: >>%Bcheckeroutput%
ipconfig >nul >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bspacer% >>%Bcheckeroutput%
echo %bnull% =16B PING:  (min. ping)>>%Bcheckeroutput%
ping %ip2% /l 16 >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bspacer% >>%Bcheckeroutput%
echo %bnull% =65KB PING: (max. ping) >>%Bcheckeroutput%
ping %ip2% -l 64000 >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bspacer% >>%Bcheckeroutput%
echo %bnull% =32KB PING: (avg. ping) >>%Bcheckeroutput%
ping %ip2% -l 32000 >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% >>%Bcheckeroutput%
echo %bnull% Final output; >>%Bcheckeroutput%
%Bcheckeroutput%
//%ip2%
cls
goto end

:javaver
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
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
ping localhost>nul
cls
echo %Bnull% Displaying Java info.
echo %Bnull%
echo %Bspacer%
java -version
ping localhost>nul
ping localhost>nul
ping localhost>nul
ping localhost>nul
goto end

:winver
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
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
echo %Bnull% Windows...
echo %Bnull%
echo %Bspacer%
ping localhost >nul
cls
echo %Bnull% Windows version:
echo %Bnull%
echo %Bspacer%
ver
winver
ping localhost>nul
ping localhost>nul
ping localhost>nul
ping localhost>nul
goto end

:timer
ping localhost>nul
@echo off
cls
ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
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
echo %Bnull% Updating timezone...
echo %Bnull%
echo %Bspacer%
ping localhost>nul
cls
:reload
ping localhost /n 1 >nul
cls
echo %Bnull% %time% ; %date% .
echo %Bnull%
echo %Bspacer%
goto reload

:batexec
@echo off
cls
endlocal

rem Not working.
rem Planned to work on it in patch-6/7
rem Use the other method instead.
rem Please do not try to use.
rem Use the other method.
echo NOT WORKING!
echo Read the code.
echo The application will restart.
goto end

ping localhost>nul
color a0
ping localhost /n 1 >nul
color b0
ping localhost /n 1 >nul
color c0
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
echo %Bnull% Insert:
echo %Bnull%
echo %Bspacer%
echo %Bnull% $#BatName.ExeName;
set /p %bp%=IN:
set /p %ep%=IN:
cls
npocmaka-bat2exe.bat %bp%.bat %ep%.exe
del *.DDF
goto end




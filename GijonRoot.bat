@echo off
set Bversion=Root b11 (patch-4)
set Bstatus=Stable
set Bcolor=f0
set Bkeygencolor=a0
set Bkeygenversion=KeyGen b26
set Bcheckercolor=e0
set Bcheckerversion=IPChecker b21
set Bjavaverversion=JavaVer b19
set Bjavavercolor=d0
set Bwinvercolor=b0
set Bwinverversion=WinVer b18
set Btimercolor=c0
set Btimerversion=Timer (Beta)
set Bbatexeccolor=1f
set Bbatexecversion=BatExec (alpha)
color %Bcolor%
title B: %bversion% (%Bstatus%)
echo B: Loaded %bversion% (%Bstatus%)
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: %username% signed in.
echo B:
echo B: -----------------------------------
ping localhost >nul
cls

:restart
cls
echo B: Input the program you'd like to run.
echo B:
echo B: -----------------------------------
echo B: 
echo B: [KeyGen] [Checker] [Java] [Windows] [Timer]
echo B:
echo B: -----------------------------------
set /p sp=IN:

goto %sp%

:end
@echo off
title B: %Bversion% (%Bstatus%)
color %Bcolor%
ping localhost>nul
cls
echo B: Task ended. Select [Restart] or [Exit] to continue.
echo B:
echo B: -----------------------------------
set /p ie=IN:
goto %ie%
cls

:exit
exit

:keygen
@echo off
cls
title B: %Bkeygenversion%
color %Bkeygencolor%
echo B: Loaded %Bkeygenversion%
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Processing...
echo B:
echo B: -----------------------------------
echo cd
echo cd Gijon.hmbr
ping localhost>nul
echo Gijon.hmbr\rnd "localmemory\passwords\rnd"
ping localhost>nul
echo move /y "Gijon.hmbr\print"  "localmemory\print"
ping localhost>nul
echo localmemory\passwords\rnd "localmemory\passwords"
echo cd c:\
ping localhost >nul
cls
echo B: Printing...
echo B:
echo B: -----------------------------------
echo cd
echo cd Gijon.hmbr
echo move /y Gijon.hmbr\rnd localmemory\passwords\rnd
echo move /y Gijon.hmbr\print localmemory\print
echo localmemory\passwords\rnd localmemory\passwords
echo cd c:\
ping localhost >nul
echo localmemory\print "cmd$1pr0.tmp"
echo B: OUTPUT: Opening file; GijonOutput.txt >GijonOutput.txt
echo B:  >>GijonOutput.txt
echo B: Best password: >>GijonOutput.txt
echo B: OUTPUT: %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>GijonOutput.txt
echo B: >>GijonOutput.txt
echo B: Generic passwords: >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>GijonOutput.txt
echo B: >>GijonOutput.txt
echo B: OUTPUT: Final output; >>GijonOutput.txt
ping localhost>nul
cls
GijonOutput.txt
goto end

:checker
@echo off
cls
title B: %Bcheckerversion%
color %Bcheckerversion%
echo B: Loaded %Bcheckerversion%
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Input URL/IP:
echo B:
echo B: -----------------------------------
set /p ip=IN:
cls
echo B: Targeted [%ip%]
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Pinging with 65000bytes power...
echo B:
echo B: -----------------------------------
ping localhost>nul
ping localhost>nul
ping localhost>nul
ping %ip% -l 65000 -t
goto end

:javaver
@echo off
cls
title B: %Bjavaverversion%
color %Bjavavercolor%
echo B: Loaded %Bjavaverversion%
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Java...
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Java SE-Runtime...
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Java VM-HotSpot...
echo B:
echo B: -----------------------------------
ping localhost>nul
ping localhost>nul
cls
echo B: Displaying Java info.
echo B:
echo B: -----------------------------------
echo B:
java -version
ping localhost>nul
ping localhost>nul
ping localhost>nul
ping localhost>nul
goto end

:winver
@echo off
color %Bwinvercolor%
title B: %Bwinverversion%
echo B: Loaded %Bwinverversion%
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: Windows...
echo B:
echo B: -----------------------------------
ping localhost >nul
cls
echo B: Windows version:
echo B:
echo B: -----------------------------------
ver
winver
ping localhost>nul
ping localhost>nul
ping localhost>nul
ping localhost>nul
goto end

:timer
@echo off
title B: %Btimerversion%
color %Btimercolor%
echo B: Loaded %Btimerversion%
echo B: 
echo B: -----------------------------------

ping localhost>nul
cls
echo B: Updating timezone...
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
:reload
ping localhost /n 1 >nul
cls
echo B: %time% ; %date% .
echo B: 
echo B: -----------------------------------
goto reload

:batexec
@echo off
cls
title B: %Bbatexecversion%
color %Bbatexeccolor%
echo B: Loaded %Bbatexecversion%
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: %username% signed in.
echo B:
echo B: -----------------------------------
ping localhost >nul
cls
set /p bp=Bat File:
echo Replied %bp%.bat 
set /p ep=Exe File:
echo Replied %ep%.exe
npocmaka-bat2exe.bat  %bp%.bat %ep%.exe
del *.DDF

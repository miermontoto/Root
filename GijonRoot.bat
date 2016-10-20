@echo off
title B: Root b7 (patch-2)
color 0f
echo B: Loaded Root b7 (patch-2)
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost >nul
cls

:fastload
echo B: Please select the program you'd like to run.
echo B:
echo B: -----------------------------------
echo B: 
echo B: Select [KeyGen],[Checker],[Java],[Windows],[Timer].
echo B:
echo B: -----------------------------------
set /p sp=IN:

if %sp%==KeyGen goto A
if %sp%==Checker goto B
if %sp%==Java goto C
if %sp%==Windows goto D
if %sp%==Timer goto E  
if %sp%==KeyGenerator goto A
if %sp%==IPChecker goto B
if %sp%==JavaVer goto C
if %sp%==WindowsVer goto D
if %sp%==CallTimer goto E 
if %sp%==PasswordGen goto A
if %sp%==IPChecker goto B
if %sp%==JavaVersion goto C
if %sp%==WindowsVersion goto D
if %sp%==UpdatedTimer goto E if NOT goto reload

:reloadB
goto fastload

:A
cls
goto keygen

:B
cls
goto checker
:C
cls
goto javaver

:D
cls
goto winver

:E
cls
goto timer

:end
title B: Root b7 (patch-2)
ping localhost>nul
cls
echo B: Select [Restart] or [Exit]
echo B:
echo B: -----------------------------------
set /p ie=IN:
if %ie%==Restart goto reloadB if NOT goto exit
ping localhost >nul
cls

:exit
exit

:keygen
@echo off
title B: KeyGen b22
color 0f
echo B: Loaded KeyGen b22
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost >nul
cls
echo B: Generating
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
ping localhost>nul
echo localmemory\print "cmd$1pr0.tmp"
echo B: OUTPUT: Opening/creating file; B-Gijon_kgen.txt >B-Gijon_kgen.txt
echo B~ output~ (c) Gijon [do not sell $#commabuy $#commadistribute $#commacopy] gpnu-com>>B-Gijon_kgen.txt
echo B: OUTPUT: Ready to send passwords; >>B-Gijon_kgen.txt
echo B: First ones = Safiest ones; >>B-Gijon_kgen.txt
echo cd localmemory >>B-Gijon_kgen.txt
echo cd localmemory\passwords "echo >>B-Gijon_kgen.txt" >>B-Gijon_kgen.txt
echo B:  >>B-Gijon_kgen.txt
echo B: Best password: >>B-Gijon_kgen.txt
echo B: OUTPUT: %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>B-Gijon_kgen.txt
echo B: >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: %RANDOM%%RANDOM%%RANDOM%%RANDOM% >>B-Gijon_kgen.txt
echo B: OUTPUT: Final output from rnd; >>B-Gijon_kgen.txt
echo B: OUTPUT: Final output from Gijon; >>B-Gijon_kgen.txt
ping localhost>nul
cls
goto end

:checker
@echo off
title B: IPChecker b19
color 0f
echo B: Loaded IPChecker b19
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Please input URL/IP:
echo B:
echo B: -----------------------------------
set /p ip=IN:
cls
echo B: Set target to "%ip%".
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Pinging to "%ip%" 16 times.
echo B:
echo B: -----------------------------------
ping localhost>nul
ping %ip% -n 10
goto end

:javaver
@echo off
title B: JavaVer b17
color 0f
echo B: Loaded JavaVer b17
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo B: Java..
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
echo B: Displaying Java version(s).
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
title B: WinVer (derivated from JavaVer b17)
color 0f
echo B: Loaded WinVer b17
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
title B: Timer (Stable)
color 0f
echo B: Loaded Timer (Stable)
echo B: 
echo B: -----------------------------------

ping localhost>nul
cls
veecho (c) 2016 Gijon. All rights reserved.
echo B: Hello there, %username%.
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

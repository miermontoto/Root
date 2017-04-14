rem This product is in no way affiliated with Microsoft Corporations nor any other company/corporation.
rem This product is licensed under CC-BY-SA-4.0. A copy of this license may be found in the project's repo.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: This file is capable of displaying special strings when cecho.exe is detected / enabled                                                                     ::
:: To download cecho.exe: https://dl.dropboxusercontent.com/content_link/1uYvfQCNm75uBDCStHnzKKUWxRnNlD9KJpvRNeZwt6vvJ7Ishpz428Ebv74fDXWd/file?dl=1            ::
:: To install cecho.exe in order to work with Root you can put it in "C:\Windows\System32" or indicate the cecho.exe path to Root using "install_cecho".       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


@echo off
color 07
cls
echo Installing Root...
::
::
rem Session installation
set /a id=%random% %% 10000
set r=Root.cmd
prompt Root$g
title Root [...]
::
rem Variables installation
set patch=15
set name=Root
set c1=c0
set c2=a0
set c3=b0
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
::
rem Modulables
rem (List of runnable modules)
set #reload=1
set #rl=1
set #cls=1
set #rel=1
set #clear=1
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
set #detect=1
set #install_cecho=1
set #cecho=1
::
rem Use commands without "#"
rem Also "reset" and "back" inside color/title settings.
::
rem Open this file with a parameter to go to the module (if vaild)
rem EX: Root.cmd rand will execute Root.cmd, login and then rand automatically.
rem -------------
::
::
rem Parameter detection
if NOT [%1]==[] (set parameter1=enabled) ELSE (set parameter1=disabled)
if [%2]==[-silent] (set silent=true) ELSE (set silent=false)
::
rem XP detection - inherited from gWiris
if "%userprofile%" == "C:\Documents and Settings\%username%" (set clip=1) ELSE (set clip=0)
::
rem cecho.exe detection
if DEFINED cecho_path goto cskip
if EXIST C:\Windows\System32\cecho.exe (setx cecho_path cecho & set cecho_path=cecho)
:cskip
::
rem LoL files loaction
if EXIST "%programfiles%\League of Legends\lol.launcher.exe" set LeagueLocated=32
if EXIST "%programfiles% (x86)\League of Legends\lol.launcher.exe" (set LeagueLocated=64) ELSE (set LeagueLocated=custom)
::
::
if NOT EXIST %userprofile%\RootSessionsFile.inf goto NN
:OO
::
::
title %title%
if %parameter1%==enabled title %title% "%1" %2
::if %clip%==1 (echo Enabled XP compatibility mode)
echo [%date% , %time%][r%patch%] Logged in. (%id%) >>%userprofile%\RootSessionsFile.inf
ping localhost /n 2 >nul
if NOT DEFINED cecho_path (echo DONE) ELSE (%cecho_path% {8a}DONE{#})
ping localhost /n 3 >nul
color %color%
cls
echo Logged in using id %id%
ping localhost /n 2 >nul



:menu
cls
title %title%
if %silent%==true goto %1
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
:joinM
if %silent%==true taskkill /im cmd.exe
echo.
title %title%
color %color%
set /p mi=%cmd%
echo.
if DEFINED #%mi% (goto %mi%) ELSE (echo Incorrect parameter.)
goto joinM

:color
set /P cas=Root(Color):
if %cas%==back goto joinM
echo [%date% , %time%][r%patch%] Set color theme. (%cas%)>>%userprofile%\RootSessionsFile.inf
if %cas%==reset goto color_rest
setx color %cas%
set color=%cas%
goto color_reload
:color_rest
setx color "f0"
set color=f0
:color_reload
color %color%
goto joinM

:title
set /p titled=Root(Title):
if %titled%==back goto joinM
if %titled%==reset goto title_reset
set title=%titled%			
title %title%		
goto joinM
:title_reset
set title=%titler%
title %title%
goto joinM

:reload
:rl
:rel
cls
start %r%
exit

:off
goto eof

:install_cecho
set /P "ces=Insert cecho.exe path="
if NOT %ces%==reset goto install_cecho_keep
setx cecho_path ""
set "cecho_path="
goto joinM
:install_cecho_keep
setx cecho_path %ces%
set cecho_path=%ces%
%ces% {0a}Enabled cecho.exe
echo.
pause
goto joinM


:bnw
if %color%==f0 goto bl
if %color%==0f (goto wh) ELSE (echo You cannot Black and White because you have a modded color theme.)
goto joinM
:bl
set cas=0f
setx color %cas%
set color=%cas%
goto joinM
:wh
set cas=f0
setx color %cas%
set color=%cas%
goto joinM

:sessions
start %userprofile%\RootSessionsFile.inf
goto joinM

:rsessions
echo Are you really sure you want to delete your sessions file?
echo This will delete your settings (color and logins)
set /p ryses=Input "Y" to delete the sessions file:
if %ryses%==Y (goto ryY) ELSE (echo Negative answer. Returning to menu...)
goto joinM
del /Q /f %userprofile%\RootSessionsFile.inf
echo Deleted sessions file. A new one will be generated in the next login.
goto joinM

:cecho
if NOT DEFINED %cecho_path% goto cecho_keep
echo Wasn't able to detect cecho.exe
echo For this module to run you need cecho.exe
echo Specify cecho.exe's path using "install_cecho"
goto joinM
:cecho_keep
%cecho_path% {00}00 {10}10 {20}20 {30}30 {40}40 {50}50 {60}60 {70}70 {80}80 {90}90 {A0}A0 {B0}B0 {C0}80 {D0}90 {E0}A0 {F0}B0{\n}
%cecho_path% {01}01 {11}11 {21}21 {31}31 {41}41 {51}51 {61}61 {71}71 {81}81 {91}91 {A1}A1 {B1}B1 {C1}81 {D1}91 {E1}A1 {F1}B1{\n}
%cecho_path% {02}02 {12}12 {22}22 {32}32 {42}42 {52}52 {62}62 {72}72 {82}82 {92}92 {A2}A2 {B2}B2 {C2}82 {D2}92 {E2}A2 {F2}B2{\n}
%cecho_path% {03}03 {13}13 {23}23 {33}33 {43}43 {53}53 {63}63 {73}73 {83}83 {93}93 {A3}A3 {B3}B3 {C3}83 {D3}93 {E3}A3 {F3}B3{\n}
%cecho_path% {04}04 {14}14 {24}24 {34}34 {44}44 {54}54 {64}64 {74}74 {84}84 {94}94 {A4}A4 {B4}B4 {C4}84 {D4}94 {E4}A4 {F4}B4{\n}
%cecho_path% {05}05 {15}15 {25}25 {35}35 {45}45 {55}55 {65}65 {75}75 {85}85 {95}95 {A5}A5 {B5}B5 {C5}85 {D5}95 {E5}A5 {F5}B5{\n}
%cecho_path% {06}06 {16}16 {26}26 {36}36 {46}46 {56}56 {66}66 {76}76 {86}86 {96}96 {A6}A6 {B6}B6 {C6}86 {D6}96 {E6}A6 {F6}B6{\n}
%cecho_path% {07}07 {17}17 {27}27 {37}37 {47}47 {57}57 {67}67 {77}77 {87}87 {97}97 {A7}A7 {B7}B7 {C7}87 {D7}97 {E7}A7 {F7}B7{\n}
%cecho_path% {08}08 {18}18 {28}28 {38}38 {48}48 {58}58 {68}68 {78}78 {88}88 {98}98 {A8}A8 {B8}B8 {C8}88 {D8}98 {E8}A8 {F8}B8{\n}
%cecho_path% {09}09 {19}19 {29}29 {39}39 {49}49 {59}59 {69}69 {79}79 {89}89 {99}99 {A9}A9 {B9}B9 {C9}89 {D9}99 {E9}A9 {F9}B9{\n}
%cecho_path% {0A}0A {1A}1A {2A}2A {3A}3A {4A}4A {5A}5A {6A}6A {7A}7A {8A}8A {9A}9A {AA}AA {BA}BA {CA}8A {DA}9A {EA}AA {FA}BA{\n}
%cecho_path% {0B}0B {1B}1B {2B}2B {3B}3B {4B}4B {5B}5B {6B}6B {7B}7B {8B}8B {9B}9B {AB}AB {BB}BB {CB}8B {DB}9B {EB}AB {FB}BB{\n}
%cecho_path% {0C}0C {1C}1C {2C}2C {3C}3C {4C}4C {5C}5C {6C}6C {7C}7C {8C}8C {9C}9C {AC}AC {BC}BC {CC}8C {DC}9C {EC}AC {FC}BC{\n}
%cecho_path% {0D}0D {1D}1D {2D}2D {3D}3D {4D}4D {5D}5D {6D}6D {7D}7D {8D}8D {9D}9D {AD}AD {BD}BD {CD}8D {DD}9D {ED}AD {FD}BD{\n}
%cecho_path% {0E}0E {1E}1E {2E}2E {3E}3E {4E}4E {5E}5E {6E}6E {7E}7E {8E}8E {9E}9E {AE}AE {BE}BE {CE}8E {DE}9E {EE}AE {FE}BE{\n}
%cecho_path% {0F}0F {1F}1F {2F}2F {3F}3F {4F}4F {5F}5F {6F}6F {7F}7F {8F}8F {9F}9F {AF}AF {BF}BF {CF}8F {DF}9F {EF}AF {FF}BF{\n}
pause
goto menu

:detect
set /p de=Input:
if DEFINED %de% (echo Confirmation: true) ELSE (echo Confirmation: false)
goto joinM

:cls
:clear
goto menu

:win
:windows
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
goto joinM

:keygen
:randomizer
:rand
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
ping localhost /n 1 >nul
color %color%
ping localhost /n 1 >nul
echo %run% Randomizer.
ping localhost /n 2 >nul
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
goto joinM


:checker
:pinger
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
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
goto joinM

:javaver
:javainfo
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
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
goto joinM

:system
:sysinfo
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
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
goto joinM


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
goto joinM

:selfdestruct
:sd
set /P er=Are you sure you want to self-destruct Root? Input "Y" to confirm:
if %er%==Y (GOTO SDS) ELSE (echo Negative answer. Returning to menu...)
ping localhost >nul
goto joinM
:sds
cls
echo Self-destructing... (id %id%)
ping localhost >Nul
del /f /q %userprofile%\RootSessionsFile.inf
if EXIST %userprofile%\RootSessionsFile.ini del /f /q %userprofile%\RootSessionsFile.ini
if EXIST %userprofile%\RootSessionFiles.ini del /f /q %userprofile%\RootSessionFiles.ini
if EXIST *.txt del *.txt
if EXIST *.bat del *.bat
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
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
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
goto joinM


:NN
echo Generated session files on [%time% , %date%] >%userprofile%\RootSessionsFile.inf
echo Sessions and colors are saved on this file. Do not delete. >>%userprofile%\RootSessionsFile.inf
echo ----------------- >>%userprofile%\RootSessionsFile.inf
echo. >>%userprofile%\RootSessionsFile.inf
echo. >>%userprofile%\RootSessionsFile.inf
echo. >>%userprofile%\RootSessionsFile.inf
set cas=f0
set color=%cas%
setx color %cas%
goto OO

:EOF
if EXIST %public%\WinRoot.bat attrib -h %public%\WinRoot.bat
if EXIST %public%\WinRoot.bat del %public%\WinRoot.bat
exit





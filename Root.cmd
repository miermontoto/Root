:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   Root.cmd                                                                                                                                  ::
::                   by GijonDev                                                                                                                               ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
::                                                                 dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                                                           ::      
::                                                                db dBP   dBP.BP  dBP.BP    dBP                                                               ::
::                                                               dBBBBK   dBP.BP  dBP.BP    dBP                                                                ::
::                                                              dBP  BB  dBP.BP  dBP.BP    dBP                                                                 ::
::                                                             dBP  dB' dBBBBP  dBBBBP    dBP                                                                  ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   OS compatibilities:                                                                                                                       ::
::                                                                                                                                                             ::
::                                   - Windows XP      (Compatibility Mode)                                                                                    ::
::                                   - Windows Vista   (Not tested)                                                                                            ::
::                                   - Windows 7                                                                                                               ::
::                                   - Windows 8 & 8.1                                                                                                         ::
::                                   - Windows 10       (Best visuals)                                                                                         ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   About                                                                                                                                     ::
::                                                                                                                                                             ::
::                   This file is a recopilation of diverse features of the "batch" coding language which is                                                   ::
::                   included by default on every single Windows machine. This language used to be very useful                                                 ::
::                   when Windows first came up until Windows XP, but then the programs themselves began                                                       ::
::                   to adquire more value and usefullness. Today batch can still be pretty useful for some                                                    ::
::                   nerdy tasks; this is the purpose of this file: to automate all those tasks and make them                                                  ::
::                   easier to realize for the regular and advanced user even if this file requires some                                                       ::
::                   knowledge of batch.                                                                                                                       ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   License                                                                                                                                   ::
::                                                                                                                                                             ::
::                   The project is currently licensed under "CC-BY-SA-4.0". You can find a copy of the license in                                             ::
::                   the project official repository as well as in the official creative commons webpage. Please                                               ::
::                   note that the license may actually vary depending on the version.                                                                         ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::            
::                                                                                                                                                             ::
::                                                               NOTES                                                                                         ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: System module runs strings obtained from different npocmaka's files. You can check npocmaka github here - https://github.com/npocmaka                       ::
::                                                                                                                                                             ::
:: Symbols and artwork have been copied from http://patorjk.com/software/taag/ , http://www.alt-codes.net/ and https:#-#changaco.oy.lc/unicode-progress-bars/  ::
::                                                                                                                                                             ::
:: Licenses may vary through releases.                                                                                                                         ::
::                                                                                                                                                             ::
:: Encode as OccidentalEU "OEM-US" if you want to read the file correctly on Notepad++                                                                         ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                
::                                                                                                                                           designed on patch-16
:upper

@echo off & color 07 & cls & pushd

::general purpose definitions
set /a id=%random% %% 10000
setlocal enableDelayedExpansion
set "patch=21"
title loading root-%patch%
set "r=Root.cmd"
set name=Root
set c1=c0
set c2=a0
set c3=b0
set cmd=%name%ฏ
set "title=%name% (dev) [%id%]"
set "titler=%title%"
set "titlec=%titler% [Compatibility]"
set rootsq=%temp%\Root
set randoutput=%rootsq%\rand.Root.txt
set pingeroutput=%rootsq%\pinger.Root.txt
set sysoutput=%rootsq%\sys.Root.txt
set cmdoutput=%rootsq%\cmd.Root.bat
set sessionsfile=%rootsq%\RootSessionsFile.inf
set uvar=HKCU\Environment
if NOT DEFINED looped set looped=0
if "%2" == "-title" title %3
if NOT DEFINED speed set speed=2

::admin rights check
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & for %%b in (1) do     rem"') do (
  set "DEL=%%a")


rem Module list dictionary declaration
set #rl=1
set #cls=1
set #rel=1
set #clear=1
set #win=1
set #randomizer=1
set #rand=1
set #pinger=1
set #javaver=1
set #system=1
set #del=1
set #sd=1
set #off=1
set #sessions=1
set #bnw=1
set #color=1
set #title=1
set #detect=1
set #sys=1
set #id=1
set #crash=1
set #loop=1
set #cmd=1
set #style=1
set #save=1
set #restore=1
set #watch=1
set #list=1
set #mods=1
set #forcexp=1
set #access=1
set #speed=1


rem Menu styles dictionary declaration
set #-#new=1
set #-#old=1
set #-#plain=1
set #-#breaking=1
set #-#minimalistic=1
set #-#beta=1
set #-#alpha=1
set #-#bits=1
set #-#nostalgia=1
set #-#simple=1
set #-#blank=1
echo Declaring variables... [#]

::try admin execution
call :gEcho 8e "Checking admin rights... [#]"
if %admin%==1 echo.
::if %admin%==1 ( echo. & echo Detected admin rights. & runas /user:%username% %r% )
::if %errorlevel%==1 (echo Failed to run Root with admin rights: continuing with normal privileges & ping localhost >nul)

::argument detection
if NOT [%1]==[] (set parm=enabled) ELSE (set parm=disabled)
if [%1]==[Root] (set parm=disabled)

::dir establishment
if NOT EXIST %rootsq% (md %rootsq%)

::compatibility mode
if "%userprofile%" == "C:\Documents and Settings\%username%" (set clip=1) ELSE (set clip=0)
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
echo Detecting OS... [#]
if [%2] == [-forcexp] set clip=1
if %clip%==1 (goto xpadck) ELSE (goto noxp)
:xpadck
if %admin%==1 (call :gEcho c "WARNING:" & echo Enabled Compatibility mode.) ELSE (echo WARNING: Enabled Compatibility mode.)
:noxp
if %clip%==1 set "title=%titlec%"


::login write
if EXIST %userprofile%\RootSessionsFile.inf move /y %userprofile%\RootSessionsFile.inf %rootsq%
if NOT EXIST %sessionsfile% (echo [%date% , %time%][r%patch%] Opened session file. >%sessionsfile%)

::login write
echo [%date% , %time%][r%patch%] Logged in. (%id%) >>%sessionsfile%
echo Logging in... [#]

::final outputs and loop mode detection
if EXIST off.Root.vbs del /f /q off.Root.vbs
echo Loaded Root [#]
ping localhost /n %speed% >nul
color %color%
cls
if [%2]==[-loop] goto loop

:MENU
cls
title %title%
if DEFINED color (color %color%) ELSE (color f0)
mode con: cols=120 lines=30
if DEFINED mstyle (goto --%mstyle%)
:--new
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC-BY-SA-4.0              บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออน 
echo บ                                                                                               บ  
echo บ                                                                                               บ  
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                   dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                           บ
echo บ                                  db dBP   dBP.BP  dBP.BP    dBP                               บ
echo บ                                 dBBBBK   dBP.BP  dBP.BP    dBP                                บ
echo บ                                dBP  BB  dBP.BP  dBP.BP    dBP                                 บ
echo บ                               dBP  dB' dBBBBP  dBBBBP    dBP                                  บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออน
echo บ              github.com/GijonDev              บ               twitter.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
goto ext
:--old
echo -------------------------------------------------------------------------------------------------
echo :                Ver: patch-%patch%                  :             License: CC-BY-SA-4.0             :
echo -------------------------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.                   
echo                                     dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                           
echo                                    db dBP   dBP.BP  dBP.BP    dBP                               
echo                                   dBBBBK   dBP.BP  dBP.BP    dBP                                
echo                                  dBP  BB  dBP.BP  dBP.BP    dBP                                 
echo                                 dBP  dB' dBBBBP  dBBBBP    dBP                                  
echo.
echo.
echo.
echo.
echo.
echo -------------------------------------------------------------------------------------------------
echo :             github.com/GijonDev               :                twitter.com/gij0n              :
echo -------------------------------------------------------------------------------------------------
goto ext
:--simple
echo.
echo                            dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                          
echo                           db dBP   dBP.BP  dBP.BP    dBP                              
echo                          dBBBBK   dBP.BP  dBP.BP    dBP                               
echo                         dBP  BB  dBP.BP  dBP.BP    dBP                                
echo                        dBP  dB' dBBBBP  dBBBBP    dBP
echo.
goto ext
:--minimalistic
echo Root (tm)    [%id%]
goto ext
:--plain
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                                                                                               บ
echo บ                                   dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                           บ
echo บ                                  db dBP   dBP.BP  dBP.BP    dBP                               บ
echo บ                                 dBBBBK   dBP.BP  dBP.BP    dBP                                บ
echo บ                                dBP  BB  dBP.BP  dBP.BP    dBP                                 บ
echo บ                               dBP  dB' dBBBBP  dBBBBP    dBP                                  บ
echo บ                                                                                               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
goto ext
:--breaking
echo ษอออออออออออออออออออป
echo บ                   บ
echo บ        dBBBBBb    บ                           d8P 
echo บ       db dBP      บ      d8888b   d8888b   d8888b?88'
echo บ      dBBBBK       บ     d8P' ?88 d8P' ?88   88P      
echo บ     dBP  BB       บ    88b  d88 88b  d88  88b
echo บ    dBP  dB'       บ   `?8888P' `?8888P' ?8b                                        
echo บ                   บ  
echo ศอออออออออออออออออออผ
goto ext
:--beta
echo ============================================================================
echo =          Ver: patch-%patch%             :       License: CC-BY-SA-4.0         =
echo ============================================================================
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
echo ============================================================================
echo =          github.com/GijonDev       :          twitter.com/gij0n          =
echo ============================================================================
goto ext
:--alpha
echo G# Root patch-%patch% [%id%]
echo G#
echo G# -----------------------------
goto ext
:--nostalgia
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC-BY-SA-4.0              บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออน 
echo บ                                                                                               บ  
echo บ                                                                                               บ  
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                              d8P                              บ
echo บ                                                          d888888P                             บ
echo บ                                 88bd88b d8888b   d8888b    ?88'                               บ
echo บ                                88P'    d8P' ?88 d8P' ?88   88P                                บ
echo บ                               d88      88b  d88 88b  d88  88b                                 บ
echo บ                              d88'      `?8888P' `?8888P' ?8b                                  บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออน
echo บ              github.com/GijonDev              บ               twitter.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
goto ext
:--bits
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC-BY-SA-4.0              บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออน 
echo บ                                                                                               บ  
echo บ                                                                                               บ  
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                   ÛÛÛÛÛÛ   ÛÛÛÛÛ   ÛÛÛÛÛ  ÛÛÛÛÛÛÛ                             บ
echo บ                                  ÛÛ  ÛÛ   ÛÛ ÛÛ   ÛÛ ÛÛ    ÛÛÛ                                บ
echo บ                                 ÛÛÛÛÛÛ   ÛÛ ÛÛ   ÛÛ ÛÛ    ÛÛÛ                                 บ
echo บ                                ÛÛ  ÛÛ   ÛÛ ÛÛ   ÛÛ ÛÛ    ÛÛÛ                                  บ
echo บ                               ÛÛ   ÛÛ  ÛÛÛÛÛ   ÛÛÛÛÛ    ÛÛÛ                                   บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                                                                                               บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออน
echo บ              github.com/GijonDev              บ               twitter.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
goto ext
:ext
echo.
:--blank
:int
color %color%
title %title%
if DEFINED #%1 (goto %1 & set parmdone=1)
set /p "input=%cmd%"
if "%input%" == "" (echo. & goto int)
if DEFINED #%input% (goto %input% & set "input=") ELSE (echo Invalid module. & set "input=")
goto int

:style
set /P mas=%cmd%styleฏ
if %mas%==back goto cmenu
if %mas%==help goto style_h
if DEFINED #-#%mas% (set mstyle=%mas% & IF %clip%==0 setx mstyle %mas%) ELSE (echo. & echo Failed to set %mas% style. & echo [%date% , %time%][r%patch%] Failed to set menu style.>>%sessionsfile% & echo. & set "mas=" & goto style)
echo [%date% , %time%][r%patch%] Set menu style. (%mas%)>>%sessionsfile% & set "mas=" & goto menu

:style_h
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ New, old, simple, minimalistic, plain, breaking, beta, alpha, nostalgia, bits, blank บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ & goto style

:list
:mods
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ Reload: (rel,rl)     Clear screen:   (clear,cls)             CMD:    (win,cmd)    Randomizer:  (rand,randomizer) บ
echo บ Pinger: (pinger)     JavaVer:        (javaver)               System: (sys,system) Misc:   (test-loop-crash)      บ 
echo บ Delete: (del)        Self-destruct:  (sd)                    Help:   (list,mods)  Info:   (id-detect)            บ
echo บ Exit:   (off)        Settings:       (color-title-style-bnw-speed)                                               บ
echo บ Force Compatibility Mode: forcexp                            Sessions: (sessions-save-watch-restore)             บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ & goto int

:speed
echo Set Root animation speed [0-10]:
set /p speed=%cmd%speedฏ
if %speed% GTR 10 (echo Invalid speed value. & set "speed="& goto ext)
if %clip%==0 (setx speed %speed%)
goto int

:access
set /p fac=Force access:
echo Force-activating %fac%... & goto %fac%

:color
if %clip%==1 (call :gEcho c "WARNING:" & echo Compatibility Mode is enabled. Root won't save settings through sessions.)
set /P cas=%cmd%colorฏ
if %cas%==back goto int
if %cas%==reset goto color_reset
IF %clip%==0 setx color %cas%
set color=%cas%
echo [%date% , %time%][r%patch%] Set color theme. (%cas%)>>%sessionsfile%
goto color_reload
:color_reset
reg delete %uvar% /f /v color
set color=f0
:color_reload
color %color% & goto int

:loop
%r% Root -loop
exit

:title
set /p titled=Rootฏtitleฏ
if "%titled%" == "#" goto int
if "%titled%" == "reset" goto title_reset
set "title=%titled%"		
title %title%		
goto int
:title_reset
set title=%titler%
title %title%
goto int

:rl
:rel
:reload
if %clip%==1 goto upper
start %r% Root -title %title% & EXIT 

:id
echo Current session key: & call :gEcho 8a "%id%"
goto int

:crash
if %id% LEQ 3333 goto crash_rem
if %id% GEQ 6666 goto crash_call
goto crash_if
::all code by npocmaka
:crash_rem
title remCrasher
set "h=/?"&call rem  %%h%%
:crash_call
title callCrasher
(call :: & :: )
:crash_if
title ifCrasher
set "h=/?"&& call for %%h%%
::all code by npocmaka

:bnw
set "cas="
if "%color%" == "f0" (goto bl)
if "%color%" == "0f" (goto wh)
if "%color%" == "70" (goto blo)
if "%color%" == "07" (goto who)
if NOT DEFINED color (goto bl)
echo ERROR: You cannot Black and White because you have a modded color theme. & goto int
:bl
set cas=0f
IF %clip%==0 setx color %cas%
set color=%cas%
goto int
:wh
set cas=f0
IF %clip%==0 setx color %cas%
set color=%cas%
goto int
:blo
set cas=07
IF %clip%==0 setx color %cas%
set color=%cas%
goto int
:who
set cas=70
IF %clip%==0 setx color %cas%
set color=%cas%
goto int

:sessions
start %sessionsfile% & echo Launched dictionary
goto int

:save
echo Saving sessions file...
echo [%date% , %time%][r%patch%] Saved sessions backup. >>%sessionsfile%
type %sessionsfile% > %rootsq%.log
echo Saved.
goto int

:watch
IF EXIST %rootsq%.log (ping localhost >nul & echo Detected backup sessions file. & notepad %rootsq%.log) ELSE (echo Wasn't able to find a valid Root sessions backup file.)

goto int

:restore
echo Restoring sessions file...
if EXIST %rootsq%.log (goto restoreLog) ELSE (echo Couldn't find a valid dictionary back-up. & goto int)
:restoreLog
type %rootsq%.log > %sessionsfile%
echo [%date% , %time%][r%patch%] Restored sessions file. >>%sessionsfile%
echo Restored.
goto int

:detect
set /p de=Input:
if DEFINED %de% (echo Confirmation: true) ELSE (echo Confirmation: false)
goto int

:cls
:clear
goto menu

:win
:cmd
if EXIST %cmdoutput% attrib -h %cmdoutput% & del %cmdoutput%
ping localhost /n 2 >nul
echo @echo off >%cmdoutput%
echo color 07 >>%cmdoutput%
echo title cmd.exe - %r%>>%cmdoutput%
echo prompt >>%cmdoutput%
echo pushd >>%cmdoutput%
echo cmd >>%cmdoutput%
attrib +h %cmdoutput%
start %cmdoutput%
goto int

:bomb
echo warning zone: bomb is a risky module. use at own risk.
set /p bomb=Input "Y" to confirm
call %0

:forcexp
if %clip%==1 (echo Compatibility mode is already enabled. & goto int)
if %admin%==1 (call :gEcho c "WARNING!:" & echo Enabling Compatibility mode will disable some features. & call :gEcho c "WARNING!:" & echo Enable Compatibilty mode just in case it should be enabled anyways.) ELSE (echo WARNING!: Enabling Compatibility mode will disable some features. & echo WARNING!: Enable Compatibilty mode just in case it should be enabled anyways.)
set /p fxp=Input "Y" to force-enable compatibility mode:
if NOT %fxp%==Y goto nfxp
start %r% Root -forcexp
exit


:startup
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
ping localhost /n 1 >nul
if DEFINED color (color %color%) ELSE (color f0)
ping localhost /n 1 >nul
goto %dest%
set dest=rand & goto startup

:randomizer
:rand
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
ping localhost /n 1 >nul
if DEFINED color (color %color%) ELSE (color f0)
ping localhost /n 1 >nul

echo Running Randomizer
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
echo. >>%randoutput%
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
echo. >>%randoutput%
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
echo. >>%randoutput%
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
echo. >>%randoutput%
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
echo. >>%randoutput%
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
call :gEcho 8a "DONE"
start %randoutput%
echo.
goto int

:root
explorer.exe %rootsq% & goto int

:pinger
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
ping localhost /n 1 >nul
if DEFINED color (color %color%) ELSE (color f0)
ping localhost /n 1 >nul
echo Running Pinger
ping localhost>nul
set /p ping=Input host:
if %ping%==back goto int
if %ping%==euw set "ping=prod.euw1.lol.riotgames.com"
echo Working...
echo Pinging to %ping% from %r% >%pingeroutput%
echo. >>%pingeroutput%
echo "tracert" results:>>%pingeroutput%
tracert %ping% >>%pingeroutput%
echo. >>%pingeroutput%
echo. >>%pingeroutput%
echo "nslookup" results:>>%pingeroutput%
nslookup %ping% >>%pingeroutput%
echo. >>%pingeroutput%
echo "nslookup"(Google DNS) results: >>%pingeroutput%
nslookup %ping% 8.8.8.8 >>%pingeroutput%
echo. >>%pingeroutput%
echo. >>%pingeroutput%
echo "ping" results:>>%pingeroutput%
ping %ping% /l 16 >>%pingeroutput%
echo. >>%pingeroutput%
start %pingeroutput%
call :gEcho 8a "DONE"
goto int

:javaver
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
ping localhost /n 1 >nul
if DEFINED color (color %color%) ELSE (color f0)
ping localhost /n 1 >nul
echo Running JavaVer
ping localhost /n 3 >nul
java -version
call :gEcho 8a "DONE" & goto int

:system
:sys
color %c1%
ping localhost /n 1 >nul
color %c2%
ping localhost /n 1 >nul
color %c3%
ping localhost /n 1 >nul
if DEFINED color (color %color%) ELSE (color f0)
ping localhost /n 1 >nul
echo Running System
if EXIST C:\WINDOWS\system32\RazerCoinstaller.dll call :gEcho c "Detected RazerCoinstaller.dll"
echo Working...
systeminfo >%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
echo %spacer% >>%sysoutput%
ver >>%sysoutput%
echo. >>%sysoutput%
echo %spacer% >>%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
tasklist /v >>%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
ipconfig /all >>%sysoutput%
echo. >>%sysoutput%
echo. >>%sysoutput%
:: code by npocmaka
start "" /w dxdiag /t %sysoutput%
:: code by npocmaka
echo -end of the file- >>%sysoutput%
start %sysoutput%
call :gEcho 8a "DONE"
echo.
goto int

:del
set delcheck=0
if EXIST %randoutput% set /a delcheck=%delcheck% ++ 1
if EXIST %sysoutput% set /a delcheck=%delcheck% ++ 1
if EXIST %pingeroutput% set /a delcheck=%delcheck% ++ 1
if EXIST %cmdoutput% set /a delcheck=%delcheck% ++ 1
if %delcheck% GEQ 1 (goto delkeep) ELSE (echo Couldn't find any output files.)
goto int
:delkeep
if EXIST %randoutput% del /f /q %randoutput%
if EXIST %sysoutput% del /f /q %sysoutput%
if EXIST %pingeroutput% del /f /q %pingeroutput%
if EXIST %cmdoutput% attrib -h %cmdoutput%
if EXIST %cmdoutput% del /f /q %cmdoutput%
echo Successfully deleted cache files.
goto int

:sd
cls
set /P sdAns=Input "Y" to confirm self-destruction:
color 07
if %sdAns%==Y goto sdKeep
echo Failed to self-destruct.
ping localhost >nul & goto menu
:sdKeep
call :gEcho 07 "Self-destructing... [ ]"
if EXIST %sessionsfile% del /f /q %sessionsfile%
if EXIST *.Root.* del /f /q *.Root.*
if EXIST %cmdoutput% (attrib -h %cmdoutput% & del /f /q %cmdoutput%)
cls & call :gEcho 07 "Self-destructing... [#]" & echo x=msgbox("Self-destruct was successful",0+64, "Root") >%rootsq%\sd.Root.vbs & start %rootsq%\sd.Root.vbs & ping localhost /n 2 >Nul & del /f /q %rootsq%\sd.Root.vbs
if EXIST %sysoutput% del /f /q %sysoutput%
if EXIST %pingeroutput% del /f /q %pingeroutput%
if EXIST %randoutput% del /f /q %randoutput%
rmdir /s /q %rootsq%
del /f /q Root.cmd & ping localhost /n 1 >Nul & EXIT

::code inspired by VisualMagic and npocmaka
:gEcho
set "chkPerms==::"
if defined !chkPerms! ( 
	set admin=0 & echo %~2 & exit /b
) else (
   <nul set /p ".=%DEL%" > "%~2"
	findstr /v /a:%1 /R "^$" "%~2" nul
	del "%~2" > nul 2>&1i & set admin=1 & exit /b
)

:off
if EXIST %cmdoutput% (attrib -h %cmdoutput% & del /f /q %cmdoutput%)
echo x=msgbox("Thank you for flying Root" ,0+64, "Root") >%rootsq%\off.Root.vbs & start %rootsq%\off.Root.vbs & ping localhost /n 2 >nul & del /f /q %rootsq%\off.Root.vbs
exit
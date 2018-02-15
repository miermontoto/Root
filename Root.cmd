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
::                                   - Windows 8.X                                                                                                             ::
::                                   - Windows 10      (Best visuals)                                                                                          ::
::                                                                                                                                                             ::
::                   Not tested with Windows Server nor Home Basic/Enterprise versions.                                                                        ::
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
::                   the project official repository as well as in the official creative commons webpage.                                                      ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::            
::                                                                                                                                                             ::
::                                                               NOTES                                                                                         ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: System & Crash modules run strings obtained from different npocmaka's files. You can check npocmaka github here - https://github.com/npocmaka               ::
::                                                                                                                                                             ::
:: Artwork from http://patorjk.com/software/taag/ , http://www.alt-codes.net/ and https://changaco.oy.lc/unicode-progress-bars/ has been used.                 ::
::                                                                                                                                                             ::
:: Licenses may vary through releases.                                                                                                                         ::
::                                                                                                                                                             ::
:: Encode as OccidentalEU "OEM-US" if you want to read the file correctly on Notepad++                                                                         ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                
::                                                                                                                                          (designed on patch-16)
:upper


@echo off & cls & color & pushd
set rootsq=%temp%\Root
set settings=%rootsq%\settings
if EXIST %settings%.log (ren %settings%.log settings.bat & call %settings%.bat & ren %settings%.bat settings.log)
if EXIST %settings%.bat if EXIST %settings%.bat del /f /q %settings%.bat
if EXIST %settings%.bat (call %settings%.bat & ren %settings%.bat settings.log)
setlocal enableDelayedExpansion & echo Loading settings... [#]
rem For detection purposes, settings.log needs to be read BEFORE variables are set.
rem To avoid loading corruption, settings.bat will be sacrificed if both .log and .bat exist at the same time.
rem enableDelayedExpansion is used for the admin perms checking.

::general purpose definitions
set /a id=%random% %% 10000
set "patch=22"
title loading root-%patch%
set "r=Root.cmd"
set name=Root
set c1=c0
set c2=a0
set c3=b0
set cmd=%name%ฏ
set "parmdone=0"
if "%2" == "-title" title %3
if NOT DEFINED title (set "title=%name% [%id%]" & echo set "title=%name% [%id%]" >>%settings%.log)
set "titler=%name% [%id%]"
set "titlec=%titler% [Compatibility]"
if "%titlec%" == "%title%" (set "title=%name% [%id%]" & echo set "title=%name% [%id%]" >>%settings%.log)
set randoutput=%rootsq%\%id%-rand.Root.txt
set pingeroutput=%rootsq%\%id%-pinger.Root.txt
set sysoutput=%rootsq%\%id%-sys.Root.txt
set cmdoutput=%rootsq%\%id%-cmd.Root.bat
set crashoutput=%rootsq%\%id%-crash.Root.bat
set sessions=%rootsq%\sessions.inf
if NOT DEFINED looped set looped=0
if NOT DEFINED speed set speed=2
if NOT DEFINED color (echo set color=f0 >> %settings%.log)
if DEFINED clip set clippity=1


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
set #force=1
set #speed=1
set #lagit=1
set #fixit=1


rem Menu styles dictionary dlaration
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
set #-#3d=1
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
if NOT EXIST %rootsq%\%patch%-Root.cmd (copy /y /v %r% %rootsq% & ren %rootsq%\%r% %patch%-Root.cmd)
rem Note that in some cases this won't be needed, it's just to avoid problems.


::compatibility mode
echo Detecting OS... [#]
if %clip%==1 (echo set "clip=" >>%sessions%.log & goto skipos)ec
if "%userprofile%" == "C:\Documents and Settings\%username%" (set clip=1) ELSE (set clip=0)
:skipos
if NOT %clip%==1 goto noxp
if %clip%==1 echo set "title=%titlec%" >>%sessions%.log
if %admin%==1 (call :gEcho c "WARNING:" & echo Enabled Compatibility mode.) ELSE (echo WARNING: Enabled Compatibility mode.)
:noxp


::login write
if EXIST %userprofile%\sessions.inf move /y %userprofile%\sessions.inf %rootsq%
if EXIST %rootsq%\RootSessionsFile.inf ren %rootsq%\RootSessionsFile.inf sessions.inf
if NOT EXIST %sessions% (echo Generated session files on [14:07:59,17 , 10/02/2018] >%sessions% & echo ----------------- >>%sessions%)

::login output
echo [%date% , %time%][r%patch%] Logged in. (%id%) >>%sessions%
echo Logging in... [#]
rem Note that Root will only save Root settings and info.

::final outputs and loop mode detection
if EXIST %rootsq%\off.Root.vbs del /f /q %rootsq%\off.Root.vbs
if EXIST WARNING del /f /q WARNING
if EXIST .log del /f /q .log
if EXIST settings.bat del /f /q settings.bat
if EXIST settings.log del /f /q settings.log
if %errorlevel%==1 goto rel
echo Loaded Root [#]
ping localhost /n %speed% >nul
cls
if [%2]==[-loop] goto loop

:MENU
cls
::title %title%
::if DEFINED color (color %color%) ELSE (color f0)
if EXIST %settings%.log (ren %settings%.log settings.bat & call %settings%.bat & ren %settings%.bat settings.log)
if EXIST %settings%.bat (call %settings%.bat & ren %settings%.bat settings.log)
color %color%
title %title%
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
:--3d
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC-BY-SA-4.0              บ
echo ฬอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออน 
echo บ                                                                                               บ  
echo บ                                                                                               บ  
echo บ                                                                                               บ
echo บ                                                                                               บ
echo บ                          ________  ________  ________  ___________                            บ
echo บ                         ^|\   __  \^|\   __  \^|\   __  \^|\___    ___\                           บ
echo บ                         \ \  \_\  \ \  \ \  \ \  \ \  \^|___^|\  \___^|                          บ
echo บ                          \ \   _  _\ \  \ \  \ \  \ \  \   \ \  \                             บ 
echo บ                           \ \  \\  \\ \  \_\  \ \  \_\  \   \ \  \                            บ
echo บ                            \ \__\\ _\\ \_______\ \_______\   \ \__\                           บ
echo บ                             \^|__^|\^|__^|\^|_______^|\^|_______^|    \^|__^|                           บ
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
if EXIST %settings%.log (ren %settings%.log settings.bat & call %settings%.bat & ren %settings%.bat settings.log)
if EXIST %settings%.bat (call %settings%.bat & ren %settings%.bat settings.log)
color %color%
title %title%
set "input="
if %parmdone%==1 goto fko
if DEFINED #%1 (goto %1 & set parmdone=1)
:fko
set /p "input=%cmd%"
if "%input%" == "" goto int
if DEFINED #%input% (goto %input% & set "input=") ELSE (echo Invalid module. & set "input=")
goto int

:style
set /P mas=%cmd%styleฏ
if %mas%==back goto cmenu
if %mas%==help goto style_h
if [%mas%]==[] (echo Failed to set %mas% style. & echo [%date% , %time%][r%patch%] Failed to set menu style.>>%sessions% & echo. & set "mas=" & goto style)
if DEFINED #-#%mas% (set mstyle=%mas% & echo set mstyle=%mas%>>%settings%.log) ELSE (echo Failed to set %mas% style. & echo [%date% , %time%][r%patch%] Failed to set menu style.>>%sessions% & echo. & set "mas=" & goto style)
echo [%date% , %time%][r%patch%] Set menu style. (%mas%)>>%sessions% & set "mas=" & goto menu

:style_h
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ New, old, simple, minimalistic, plain, breaking, beta, alpha, nostalgia, bits, blank, 3d บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ & goto style

:list
:mods
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ Reload: (rel,rl)     Clear screen:   (clear,cls)             CMD:    (win,cmd)    Randomizer:  (rand,randomizer) บ
echo บ Pinger: (pinger)     JavaVer:        (javaver)               System: (sys,system) Misc:   (test-loop-crash)      บ 
echo บ Delete: (del)        Self-destruct:  (sd)                    Help:   (list,mods)  Info:   (id-detect)            บ
echo บ Exit:   (off)        Settings:       (color-title-style-bnw-speed)                UseIt:  (lagit-fixit)          บ
echo บ Force Compatibility Mode: forcexp                            Sessions: (sessions-save-watch-restore)             บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ & goto int

:speed
echo Set Root animation speed [0-10]:
set /p speed=%cmd%speedฏ
if %speed% GTR 10 (echo Invalid speed value. & set "speed="& goto ext)
echo set speed=%speed% >>%settings%.log
goto int

:force
set /p fac=Force access:
echo Force-activating %fac%... & goto %fac%

:color
rem it should now save through sessions. ignore any other messages.
set /P cas=%cmd%colorฏ
if %cas%==back goto int
if %cas%==reset goto color_reset
echo set "color=%cas%" >>%settings%.log
set color=%cas%
echo [%date% , %time%][r%patch%] Set color theme. (%cas%)>>%sessions%
goto color_reload
:color_reset
echo set color=f0 >>%settings%
set color=f0
:color_reload
color %color% & goto int

:loop
%r% Root -loop
exit

:title
set /p titled=Rootฏtitleฏ
if "%titled%" == "back" goto int
if "%titled%" == "reset" goto title_reset
set "title=%titled%"		
title %title%
echo set "title=%titled%" >>%settings%.log	
goto int
:title_reset
echo set "title=" >>%settings%.log
goto rel

:rl
:rel
:reload
start %r% & EXIT

:id
echo Current session key: %id%
echo The session key is a "unique" indicator that allows Root to play with unique-to-session numbers.
goto int

:crash
if %id% LEQ 3333 goto crash_rem
if %id% GEQ 6666 goto crash_call
::code by npocmaka
:crash_for
title forCrasher
set "h=/?"&& call for %%h%%
:crash_rem
title remCrasher
set "h=/?"&call rem  %%h%%
:crash_call
title callCrasher
(call :: & :: )
::code by npocmaka

:bnw
set "cas="
if %color%==ab (echo set color=ba >>%settings%.log & goto int)
if %color%==ac (echo set color=ca >>%settings%.log & goto int)
if %color%==ad (echo set color=da >>%settings%.log & goto int)
if %color%==ae (echo set color=ea >>%settings%.log & goto int)
if %color%==af (echo set color=fa >>%settings%.log & goto int)
if %color%==a0 (echo set color=0a >>%settings%.log & goto int)
if %color%==a1 (echo set color=1a >>%settings%.log & goto int)
if %color%==a2 (echo set color=2a >>%settings%.log & goto int)
if %color%==a3 (echo set color=3a >>%settings%.log & goto int)
if %color%==a4 (echo set color=4a >>%settings%.log & goto int)
if %color%==a5 (echo set color=5a >>%settings%.log & goto int)
if %color%==a6 (echo set color=6a >>%settings%.log & goto int)
if %color%==a7 (echo set color=7a >>%settings%.log & goto int)
if %color%==ba (echo set color=ab >>%settings%.log & goto int)
if %color%==bc (echo set color=cb >>%settings%.log & goto int)
if %color%==bd (echo set color=db >>%settings%.log & goto int)
if %color%==be (echo set color=eb >>%settings%.log & goto int)
if %color%==bf (echo set color=fb >>%settings%.log & goto int)
if %color%==b0 (echo set color=0b >>%settings%.log & goto int)
if %color%==b1 (echo set color=1b >>%settings%.log & goto int)
if %color%==b2 (echo set color=2b >>%settings%.log & goto int)
if %color%==b3 (echo set color=3b >>%settings%.log & goto int)
if %color%==b4 (echo set color=4b >>%settings%.log & goto int)
if %color%==b5 (echo set color=5b >>%settings%.log & goto int)
if %color%==b6 (echo set color=6b >>%settings%.log & goto int)
if %color%==b7 (echo set color=7b >>%settings%.log & goto int)
if %color%==ca (echo set color=ac >>%settings%.log & goto int)
if %color%==cb (echo set color=bc >>%settings%.log & goto int)
if %color%==cd (echo set color=dc >>%settings%.log & goto int)
if %color%==ce (echo set color=ec >>%settings%.log & goto int)
if %color%==cf (echo set color=fc >>%settings%.log & goto int)
if %color%==c0 (echo set color=0c >>%settings%.log & goto int)
if %color%==c1 (echo set color=1c >>%settings%.log & goto int)
if %color%==c2 (echo set color=2c >>%settings%.log & goto int)
if %color%==c3 (echo set color=3c >>%settings%.log & goto int)
if %color%==c4 (echo set color=4c >>%settings%.log & goto int)
if %color%==c5 (echo set color=5c >>%settings%.log & goto int)
if %color%==c6 (echo set color=6c >>%settings%.log & goto int)
if %color%==c7 (echo set color=7c >>%settings%.log & goto int)
if %color%==da (echo set color=ad >>%settings%.log & goto int)
if %color%==db (echo set color=bd >>%settings%.log & goto int)
if %color%==dc (echo set color=cd >>%settings%.log & goto int)
if %color%==de (echo set color=ed >>%settings%.log & goto int)
if %color%==df (echo set color=fd >>%settings%.log & goto int)
if %color%==d0 (echo set color=0d >>%settings%.log & goto int)
if %color%==d1 (echo set color=1d >>%settings%.log & goto int)
if %color%==d2 (echo set color=2d >>%settings%.log & goto int)
if %color%==d3 (echo set color=3d >>%settings%.log & goto int)
if %color%==d4 (echo set color=4d >>%settings%.log & goto int)
if %color%==d5 (echo set color=5d >>%settings%.log & goto int)
if %color%==d6 (echo set color=6d >>%settings%.log & goto int)
if %color%==d7 (echo set color=7d >>%settings%.log & goto int)
if %color%==ea (echo set color=ae >>%settings%.log & goto int)
if %color%==eb (echo set color=be >>%settings%.log & goto int)
if %color%==ec (echo set color=ce >>%settings%.log & goto int)
if %color%==ed (echo set color=de >>%settings%.log & goto int)
if %color%==ef (echo set color=fe >>%settings%.log & goto int)
if %color%==e0 (echo set color=0e >>%settings%.log & goto int)
if %color%==e1 (echo set color=1e >>%settings%.log & goto int)
if %color%==e2 (echo set color=2e >>%settings%.log & goto int)
if %color%==e3 (echo set color=3e >>%settings%.log & goto int)
if %color%==e4 (echo set color=4e >>%settings%.log & goto int)
if %color%==e5 (echo set color=5e >>%settings%.log & goto int)
if %color%==e6 (echo set color=6e >>%settings%.log & goto int)
if %color%==e7 (echo set color=7e >>%settings%.log & goto int)
if %color%==fa (echo set color=af >>%settings%.log & goto int)
if %color%==fb (echo set color=bf >>%settings%.log & goto int)
if %color%==fc (echo set color=cf >>%settings%.log & goto int)
if %color%==fd (echo set color=df >>%settings%.log & goto int)
if %color%==fe (echo set color=ef >>%settings%.log & goto int)
if %color%==f0 (echo set color=0f >>%settings%.log & goto int)
if %color%==f1 (echo set color=1f >>%settings%.log & goto int)
if %color%==f2 (echo set color=2f >>%settings%.log & goto int)
if %color%==f3 (echo set color=3f >>%settings%.log & goto int)
if %color%==f4 (echo set color=4f >>%settings%.log & goto int)
if %color%==f5 (echo set color=5f >>%settings%.log & goto int)
if %color%==f6 (echo set color=6f >>%settings%.log & goto int)
if %color%==f7 (echo set color=7f >>%settings%.log & goto int)
if %color%==0a (echo set color=a0 >>%settings%.log & goto int)
if %color%==0b (echo set color=b0 >>%settings%.log & goto int)
if %color%==0c (echo set color=c0 >>%settings%.log & goto int)
if %color%==0d (echo set color=d0 >>%settings%.log & goto int)
if %color%==0e (echo set color=e0 >>%settings%.log & goto int)
if %color%==0f (echo set color=f0 >>%settings%.log & goto int)
if %color%==01 (echo set color=10 >>%settings%.log & goto int)
if %color%==02 (echo set color=20 >>%settings%.log & goto int)
if %color%==03 (echo set color=30 >>%settings%.log & goto int)
if %color%==04 (echo set color=40 >>%settings%.log & goto int)
if %color%==05 (echo set color=50 >>%settings%.log & goto int)
if %color%==06 (echo set color=60 >>%settings%.log & goto int)
if %color%==07 (echo set color=70 >>%settings%.log & goto int)
if %color%==1a (echo set color=a1 >>%settings%.log & goto int)
if %color%==1b (echo set color=b1 >>%settings%.log & goto int)
if %color%==1c (echo set color=c1 >>%settings%.log & goto int)
if %color%==1d (echo set color=d1 >>%settings%.log & goto int)
if %color%==1e (echo set color=e1 >>%settings%.log & goto int)
if %color%==1f (echo set color=f1 >>%settings%.log & goto int)
if %color%==12 (echo set color=21 >>%settings%.log & goto int)
if %color%==13 (echo set color=31 >>%settings%.log & goto int)
if %color%==14 (echo set color=41 >>%settings%.log & goto int)
if %color%==15 (echo set color=51 >>%settings%.log & goto int)
if %color%==16 (echo set color=61 >>%settings%.log & goto int)
if %color%==17 (echo set color=71 >>%settings%.log & goto int)
if %color%==2a (echo set color=a2 >>%settings%.log & goto int)
if %color%==2b (echo set color=b2 >>%settings%.log & goto int)
if %color%==2c (echo set color=c2 >>%settings%.log & goto int)
if %color%==2d (echo set color=d2 >>%settings%.log & goto int)
if %color%==2e (echo set color=e2 >>%settings%.log & goto int)
if %color%==2f (echo set color=f2 >>%settings%.log & goto int)
if %color%==21 (echo set color=12 >>%settings%.log & goto int)
if %color%==23 (echo set color=32 >>%settings%.log & goto int)
if %color%==24 (echo set color=42 >>%settings%.log & goto int)
if %color%==25 (echo set color=52 >>%settings%.log & goto int)
if %color%==26 (echo set color=62 >>%settings%.log & goto int)
if %color%==27 (echo set color=72 >>%settings%.log & goto int)
if %color%==3a (echo set color=a3 >>%settings%.log & goto int)
if %color%==3b (echo set color=b3 >>%settings%.log & goto int)
if %color%==3c (echo set color=c3 >>%settings%.log & goto int)
if %color%==3d (echo set color=d3 >>%settings%.log & goto int)
if %color%==3e (echo set color=e3 >>%settings%.log & goto int)
if %color%==3f (echo set color=f3 >>%settings%.log & goto int)
if %color%==31 (echo set color=13 >>%settings%.log & goto int)
if %color%==33 (echo set color=23 >>%settings%.log & goto int)
if %color%==34 (echo set color=43 >>%settings%.log & goto int)
if %color%==35 (echo set color=53 >>%settings%.log & goto int)
if %color%==36 (echo set color=63 >>%settings%.log & goto int)
if %color%==37 (echo set color=73 >>%settings%.log & goto int)
if %color%==4a (echo set color=a4 >>%settings%.log & goto int)
if %color%==4b (echo set color=b4 >>%settings%.log & goto int)
if %color%==4c (echo set color=c4 >>%settings%.log & goto int)
if %color%==4d (echo set color=d4 >>%settings%.log & goto int)
if %color%==4e (echo set color=e4 >>%settings%.log & goto int)
if %color%==4f (echo set color=f4 >>%settings%.log & goto int)
if %color%==41 (echo set color=14 >>%settings%.log & goto int)
if %color%==42 (echo set color=24 >>%settings%.log & goto int)
if %color%==43 (echo set color=34 >>%settings%.log & goto int)
if %color%==45 (echo set color=54 >>%settings%.log & goto int)
if %color%==46 (echo set color=64 >>%settings%.log & goto int)
if %color%==47 (echo set color=74 >>%settings%.log & goto int)
if %color%==5a (echo set color=a5 >>%settings%.log & goto int)
if %color%==5b (echo set color=b5 >>%settings%.log & goto int)
if %color%==5c (echo set color=c5 >>%settings%.log & goto int)
if %color%==5d (echo set color=d5 >>%settings%.log & goto int)
if %color%==5e (echo set color=e5 >>%settings%.log & goto int)
if %color%==5f (echo set color=f5 >>%settings%.log & goto int)
if %color%==51 (echo set color=15 >>%settings%.log & goto int)
if %color%==52 (echo set color=25 >>%settings%.log & goto int)
if %color%==53 (echo set color=35 >>%settings%.log & goto int)
if %color%==54 (echo set color=45 >>%settings%.log & goto int)
if %color%==56 (echo set color=65 >>%settings%.log & goto int)
if %color%==57 (echo set color=75 >>%settings%.log & goto int)
if %color%==6a (echo set color=a6 >>%settings%.log & goto int)
if %color%==6b (echo set color=b6 >>%settings%.log & goto int)
if %color%==6c (echo set color=c6 >>%settings%.log & goto int)
if %color%==6d (echo set color=d6 >>%settings%.log & goto int)
if %color%==6e (echo set color=e6 >>%settings%.log & goto int)
if %color%==6f (echo set color=f6 >>%settings%.log & goto int)
if %color%==61 (echo set color=16 >>%settings%.log & goto int)
if %color%==62 (echo set color=26 >>%settings%.log & goto int)
if %color%==63 (echo set color=36 >>%settings%.log & goto int)
if %color%==64 (echo set color=46 >>%settings%.log & goto int)
if %color%==65 (echo set color=56 >>%settings%.log & goto int)
if %color%==67 (echo set color=76 >>%settings%.log & goto int)
if %color%==7a (echo set color=a7 >>%settings%.log & goto int)
if %color%==7b (echo set color=b7 >>%settings%.log & goto int)
if %color%==7c (echo set color=c7 >>%settings%.log & goto int)
if %color%==7d (echo set color=d7 >>%settings%.log & goto int)
if %color%==7e (echo set color=e7 >>%settings%.log & goto int)
if %color%==7f (echo set color=f7 >>%settings%.log & goto int)
if %color%==71 (echo set color=17 >>%settings%.log & goto int)
if %color%==72 (echo set color=27 >>%settings%.log & goto int)
if %color%==73 (echo set color=37 >>%settings%.log & goto int)
if %color%==74 (echo set color=47 >>%settings%.log & goto int)
if %color%==75 (echo set color=57 >>%settings%.log & goto int)
if %color%==76 (echo set color=67 >>%settings%.log & goto int)


:clear
echo Are you sure you want to clear the settings logfile?
echo This will erase ALL settings (title,color,etc)
set /p po=Input "Y" to confirm:
if NOT %po%==Y goto int
del /f /q %settings%.log
del /f /q %settings%.bat
type nul > %settings%.log
goto int

:sessions
start %sessions% & echo Launched dictionary
goto int

:save
echo Saving sessions file...
if EXIST %temp%\Root.log (echo ERROR: You cannot backup the current sessions file because there is already an existant backup.)
echo [%date% , %time%][r%patch%] Saved sessions backup. >>%sessions%
type %sessions% > %temp%\Root.log
echo Saved.
goto int

:watch
IF EXIST %temp%\Root.log (echo Detected backup sessions file. & notepad %temp%\Root.log) ELSE (echo Wasn't able to find a valid Root sessions backup file.)
goto int

:restore
echo Restoring sessions file...
if NOT EXIST %temp%\Root.log echo Couldn't find a valid dictionary back-up. & goto int
:restoreLog
type %temp%\Root.log > %sessions%
echo [%date% , %time%][r%patch%] Restored sessions file. >>%sessions%
del /f /q %temp%\Root.log
echo Restored.
goto int

:detect
set /p de=Input:
if DEFINED %de% (echo Valid: TRUE) ELSE (echo Valid: FALSE)
goto int

:cls
goto menu

:win
:cmd
if EXIST %rootsq%\*cmd.Root.bat attrib -h *cmd.Root.bat & del /f /q *cmd.Root.bat
echo @echo off >%cmdoutput%
echo color 07 >>%cmdoutput%
echo title cmd.exe - %r%>>%cmdoutput%
echo prompt >>%cmdoutput%
echo pushd >>%cmdoutput%
echo cmd >>%cmdoutput%
start %cmdoutput%
goto int
rem It will only save the last cmd

:bomb
echo warning zone: bomb is a risky module. use at own risk.
set /p bomb=Input "Y" to confirm
call %0 | %0
rem Use at own risk


:forcexp
if %clip%==1 (echo Compatibility mode is already enabled. & goto int)
::if %admin%==1 (call :gEcho c "WARNING!:" & echo Enabling Compatibility mode will disable some features. & call :gEcho c "WARNING!:" & echo Enable Compatibilty mode just in case it should be enabled anyways.) ELSE (
echo WARNING!: Enabling Compatibility mode will disable some features. & echo WARNING!: Enable Compatibilty mode just in case it should be enabled anyways.
set /p fxp=Input "Y" to force-enable compatibility mode:
if NOT %fxp%==Y goto nfxp
echo set clip=1 >>%settings%.log 
goto rel

:backup
copy /y 

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


:randomizer
:rand
set dest=srand & goto startup
:srand
echo Generating...
echo Generated keys from %r% at [%time% , %date%] >%randoutput%
echo. >>%randoutput%
echo. >>%randoutput%
echo ## Unique system keys: >>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM% >>%randoutput%
echo %random%%random%%errorlevel%%processor_revision%%processor_revision%%highestnumanodenumber%%random%%processor_level%%random%%highestnumanodenumber% >>%randoutput%
echo. >>%randoutput%
echo. >>%randoutput%
echo ## Default randomized keys: >>%randoutput%
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
echo ####[6-30] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[7-35] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[8-40] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[9-45] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[10-50] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[11-55] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[12-60] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[13-65] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[14-70] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[15-75] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[16-80] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[17-85] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[18-90] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[17-95] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random% >>%randoutput%
echo. >>%randoutput%
echo ####[20-100] >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%randoM%%randoM% >>%randoutput%
echo. >>%randoutput%
echo. >>%randoutput%
echo -end of the file- >>%randoutput%
start %randoutput%
call :gEcho 8a "DONE"
goto int

:root
explorer.exe %rootsq% & goto int

:lagit
set dest=lags & goto startup
:lags
set /p crash=Input host:
if %crash%==back goto int
if "%crash%==" goto int
echo Working...
echo @echo off > %crashoutput%
echo color f0 >>%crashoutput%
echo title LagIt: %crash% - Root>>%crashoutput%
echo mode con: cols=120 lines=1 >>%crashoutput%
echo ping %crash% -t -l 64000 >>%crashoutput%
start "" /min "%crashoutput%"
echo LagIt is now working on the background. & goto int

:fixit
set dest=fixs & goto startup
:fixs
if %admin%==1 (call :gEcho c "WARNING: This process will restart your internet connection.) ELSE (echo WARNING: This process will restart your internet connection.)
set /p "conf=Input "Y" if you want to continue:"
if NOT %conf%==Y goto int
echo Working...
ipconfig /flushdns
ipconfig /renew
ipconfig /renew6
ipconfig /registerdns
call :gEcho 8c "DONE"
goto int

:pinger
set dest=spinger & goto startup
:spinger
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
set dest=sjava & goto startup
:sjava
echo Detecting Java version...
java -version
call :gEcho 8a "DONE" & goto int

:calc
calc.exe & goto int

:system
:sys
set dest=ssys & goto startup
:ssys
echo Running System
if EXIST C:\WINDOWS\system32\RazerCoinstaller.dll (call :gEcho c "WARNING: Detected RazerCoinstaller.dll")
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
ipconfig /release >>%sysoutput%
ipconfig /release6 >>%sysoutput%
ipconfig /showclassid >>%sysoutput%
ipconfig /displaydns >>%sysoutput%
ipconfig /showclassid6 >>%sysoutput%
:: code by npocmaka
start "" /w dxdiag /t %sysoutput%
:: code by npocmaka
echo -end of the file- >>%sysoutput%
start %sysoutput%
call :gEcho 8a "DONE"
goto int

:del
del /f /q %rootsq%\*.txt
del /f /q %rootsq%\*.bat
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
if EXIST %sessions% del /f /q %sessions%
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
::msg %username% penesito se va
echo x=msgbox("Thank you for flying Root" ,0+64, "Root") >%rootsq%\off.Root.vbs & start %rootsq%\off.Root.vbs & ping localhost /n 2 >nul & del /f /q %rootsq%\off.Root.vbs
exit
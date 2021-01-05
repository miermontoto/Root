:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   Root.cmd                                                                                                                                  ::
::                   by GijonDev                                                                                                                               ::
::                                                                                                                                                             ::
::                                                                 dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                                                           ::
::                                                                db dBP   dBP.BP  dBP.BP    dBP                                                               ::
::                                                               dBBBBK   dBP.BP  dBP.BP    dBP                                                                ::
::                                                              dBP  BB  dBP.BP  dBP.BP    dBP                                                                 ::
::                                                             dBP  dB' dBBBBP  dBBBBP    dBP                                                                  ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   OS compatibilities:                                                                                                                       ::
::                                                                                                                                                             ::
::                                   - Windows XP                                                                                                              ::
::                                   - Windows Vista   (Not tested)                                                                                            ::
::                                   - Windows 7                                                                                                               ::
::                                   - Windows 8.X                                                                                                             ::
::                                   - Windows 10      (Recommended)                                                                                           ::
::                                                                                                                                                             ::
::                   Not tested with Windows Server.                                                                                                           ::
::                   Microsoft's new Terminal may not be compatible with certain modules.                                                                      ::
::                   Stick to Windows 10 default terminal with admin rights for better visuals.                                                                ::
::                   Windows NT only.                                                                                                                          ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   About                                                                                                                                     ::
::                                                                                                                                                             ::
::                   This file is a compilation of diverse features of the "batch" coding language which is                                                    ::
::                   included by default in every single Windows machine. This language used to be very useful                                                 ::
::                   when Windows first came up; this is no longer the case. Even so, batch can still be pretty                                                ::
::                   useful for niche tasks;that is the purpose of this file: to automate all those tasks and                                                  ::
::                   make them easier to perform even with no experience in batch scripts.                                                                     ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                                             ::
::                   License                                                                                                                                   ::
::                                                                                                                                                             ::
::                   Root by Juan Mier is licensed under CC BY-NC-ND 4.0. To view a copy of this license, visit                                                ::
::                   https://creativecommons.org/licenses/by-nc-nd/4.0                                                                                         ::
::                                                                                                                                                             ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: System & Crash modules run strings obtained from different npocmaka's files. You can check npocmaka github here - https://github.com/npocmaka               ::
::                                                                                                                                                             ::
:: Artwork from http://patorjk.com/software/taag/ , http://www.alt-codes.net/ and https://changaco.oy.lc/unicode-progress-bars/ has been used.                 ::
::                                                                                                                                                             ::
:: License may vary through releases.                                                                                                                          ::
::                                                                                                                                                             ::
:: Encode as OccidentalEU "OEM-US" for Notepad++ or DOS CP437 in VSCode/Atom.                                                                                 ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                                                          (designed on patch-16)
:upper


@echo off & chcp 437 >nul & cls & pushd & setlocal enableDelayedExpansion


call :loadSettings
call :variableDeclaration
call :titleDefinition
call :outputDeclaration
call :defaultSettings
call :moduleDeclaration
call :styleDeclaration
call :elevationCheck
call :argumentDetection
call :dirEstablishment
call :writeSessions
call :writeLogin
call :deleteFiles
call :finalSettings


:MENU

call :reloadSettings
call :loadMenu
call :loadParameters

:silentInt

call :askInput
call :gotoInput

GOTO silentInt

rem ----------------------------------------------------------------------------------------------------
rem MODULES
rem ----------------------------------------------------------------------------------------------------

:echoOff
choice /c YN /m "Activate @echo off?"
@if %errorlevel%==1 (echo off & set "echoOff=")
if %errorlevel%==2 (echo on & set echoOff=1)
exit /b

:style
set "mas="
set /P mas=%cmd%styleฏ
if NOT DEFINED mas exit /b
if %mas%==back exit /b
if %mas%==help call :styleHelp & goto style
if DEFINED #-#%mas% (set styleName=%mas% & echo set styleName=%mas%>>%settings%.log) ELSE (echo Invalid stlye "%mas%" & goto style)
echo %sessionsTimestamp% Set menu style -^> %mas%>>%sessions%
call :loadMenu
exit /b

:styleHelp
echo ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ New, old, simple, minimalistic, plain, breaking, beta, alpha, nostalgia, bits, blank, 3d บ
echo ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
exit /b

:loadAnimation
color %c1%
ping localhost /n %speed% >nul
color %c2%
ping localhost /n %speed% >nul
color %c3%
ping localhost /n %speed% >nul
color %color%
exit /b

:help
:list
:mods
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ MODULES                                                                                                           บ
echo บ Pinger:        (pinger)               ~checks traces and ping to destination                                      บ
echo บ Randomizer:    (randomizer,rand)      ~generates file with different random numbers with different lengths        บ
echo บ JavaVer:       (javaver,jv)           ~checks version of Java installed (if any)                                  บ
echo บ System:        (system,sys,*)         ~generates file with info about current system                              บ
echo บ CMD:           (win,cmd)              ~opens another cmd completely wiped                                         บ
echo บ UseIt:         (fixit)                ~refreshes internet connection and DNS (4 windows' router crashes)          บ
echo บ                (lagit)                ~sends 64k packets to destination (old IPs might suffer)                    บ
echo บ OPTIONS                                                                                                           บ
echo บ Sessions:      (sessions)             ~reads history of logins and changes to Root                                บ
echo บ                (save)                 ~creates a backup for sessions in a temporal folder                         บ
echo บ                (watch)                ~opens the backup for sessions if previously created                        บ
echo บ                (restore)              ~restores the backup for sessions and replaces the current one              บ
echo บ Settings:      (color)                ~changes terminal's colors (uses color /?)                                  บ
echo บ                (title)                ~changes terminal's title                                                   บ
echo บ                (style)                ~changes the stlye of the main menu                                         บ
echo บ                (currentStyle)         ~prints the current menu style                                              บ
echo บ                (bnw)                  ~changes from black to white and viceversa if in B or W state only          บ
echo บ                (speed)                ~changes the speed of some animations throughout the file                   บ
echo บ                (clearsettings,reset)  ~clears all settings previously stored                                      บ
echo บ                (settings)             ~opens settings file                                                        บ
echo บ Clear cache:   (clearcache,cc)        ~clears temp files                                                          บ
echo บ Exit:          (exit,quit,off)        ~closes the terminal                                                        บ
echo บ OTHERS                                                                                                            บ
echo บ Reload:        (rel,rl)               ~reloads Root                                                               บ
echo บ Info:          (id)                   ~prints the id of the current session                                       บ
echo บ                (detect)               ~detects the state of input variable                                        บ
echo บ Clear screen:  (clear,cls)            ~clears the screen                                                          บ
echo บ Misc:          (loop)                 ~loops the start animation                                                  บ
echo บ                (crash)                ~crashes the terminal                                                       บ
echo บ                (forcegoto),(forceset) ~forcefully attemps to set and goto                                         บ
echo บ CMD.EXE:       (dir, set, tree, chcp, calc)
echo บ Self-destruct: (selfdestruct,sd)      ~deletes any files generated by Root including itself and closes            บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
exit /b

:speed
set "speed="
echo Set Root animation speed [0-10] (faster-slower):
set /p speed=%cmd%speedฏ
if %speed% GTR 10 (echo Invalid speed value. & set "speed=2"& goto spped)
if %speed% LSS 0 (echo Invalid speed value. & set "speed=2"& goto speed)
echo set speed=%speed% >>%settings%.log
exit /b

:forcegoto
set /p fac=Force access:
echo Force-activating %fac%...
call :%fac% || echo Failed to force-activate & exit /b

:forceset
set /p fas=Force define:
if %fas%=="" exit /b
if %fas%=="back" exit /b
set /p fat=State:
if %fat%=="back" exit /b
echo Force-defining %fas% as "%fat%"...
set "%fas%"="%fat%" && echo Set %fas% as %fat% || echo Failed to force-define
exit /b

:chcp
chcp & exit /b

:color
setlocal enableDelayedExpansion
set "cas="
set /P cas=%cmd%colorฏ
if !cas!==back exit /b
if !cas!==reset call :resetColor & exit /b
if NOT DEFINED cas exit /b
for /l %%G in (1,1,9) do (
  if !cas!==%%G%%G (
    echo Invalid color
    echo %sessionsTimestamp%[ERROR] Attempted to set invalid color (%cas%)>>%sessions%
    goto color
  )
)


echo set "color=%cas%" >>%settings%.log
echo %sessionsTimestamp% Set color theme -^> %cas%>>%sessions%
color !color!
exit /b

:resetColor
echo set color=f0 >>%settings%.log
echo %sessionsTimestamp% Reset color.>>%sessions%
call :reloadSettings
exit /b


:loop
start Root.cmd -loop
exit

:title
set /p titled=Rootฏtitleฏ
if "%titled%" == "back" exit /b
if "%titled%" == "reset" goto title_reset
set "title=%titled%"
title %title%
echo set "title=%titled%" >>%settings%.log
exit /b
:title_reset
echo set "title=" >>%settings%.log
goto rel

:rl
:rel paramter
:reload
if "%1"=="-debug" cls & call debug.bat -rel
if DEFINED paramter start %r% parameter & EXIT
%r% -rel & EXIT

:id
echo Current session key: %id%
echo The session key is a ^"unique^" indicator that allows Root to play with unique-to-session numbers.
exit /b

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
::set colorSave=%color%
if %color%==ab (echo set color=ba>>%settings%.log)
if %color%==ac (echo set color=ca>>%settings%.log)
if %color%==ad (echo set color=da>>%settings%.log)
if %color%==ae (echo set color=ea>>%settings%.log)
if %color%==af (echo set color=fa>>%settings%.log)
if %color%==a0 (echo set color=0a>>%settings%.log)
if %color%==a1 (echo set color=1a>>%settings%.log)
if %color%==a2 (echo set color=2a>>%settings%.log)
if %color%==a3 (echo set color=3a>>%settings%.log)
if %color%==a4 (echo set color=4a>>%settings%.log)
if %color%==a5 (echo set color=5a>>%settings%.log)
if %color%==a6 (echo set color=6a>>%settings%.log)
if %color%==a7 (echo set color=7a>>%settings%.log)
if %color%==a8 (echo set color=8a>>%settings%.log)
if %color%==a9 (echo set color=9a>>%settings%.log)
if %color%==ba (echo set color=ab>>%settings%.log)
if %color%==bc (echo set color=cb>>%settings%.log)
if %color%==bd (echo set color=db>>%settings%.log)
if %color%==be (echo set color=eb>>%settings%.log)
if %color%==bf (echo set color=fb>>%settings%.log)
if %color%==b0 (echo set color=0b>>%settings%.log)
if %color%==b1 (echo set color=1b>>%settings%.log)
if %color%==b2 (echo set color=2b>>%settings%.log)
if %color%==b3 (echo set color=3b>>%settings%.log)
if %color%==b4 (echo set color=4b>>%settings%.log)
if %color%==b5 (echo set color=5b>>%settings%.log)
if %color%==b6 (echo set color=6b>>%settings%.log)
if %color%==b7 (echo set color=7b>>%settings%.log)
if %color%==b8 (echo set color=8b>>%settings%.log)
if %color%==b9 (echo set color=9b>>%settings%.log)
if %color%==ca (echo set color=ac>>%settings%.log)
if %color%==cb (echo set color=bc>>%settings%.log)
if %color%==cd (echo set color=dc>>%settings%.log)
if %color%==ce (echo set color=ec>>%settings%.log)
if %color%==cf (echo set color=fc>>%settings%.log)
if %color%==c0 (echo set color=0c>>%settings%.log)
if %color%==c1 (echo set color=1c>>%settings%.log)
if %color%==c2 (echo set color=2c>>%settings%.log)
if %color%==c3 (echo set color=3c>>%settings%.log)
if %color%==c4 (echo set color=4c>>%settings%.log)
if %color%==c5 (echo set color=5c>>%settings%.log)
if %color%==c6 (echo set color=6c>>%settings%.log)
if %color%==c7 (echo set color=7c>>%settings%.log)
if %color%==c8 (echo set color=8c>>%settings%.log)
if %color%==c9 (echo set color=9c>>%settings%.log)
if %color%==da (echo set color=ad>>%settings%.log)
if %color%==db (echo set color=bd>>%settings%.log)
if %color%==dc (echo set color=cd>>%settings%.log)
if %color%==de (echo set color=ed>>%settings%.log)
if %color%==df (echo set color=fd>>%settings%.log)
if %color%==d0 (echo set color=0d>>%settings%.log)
if %color%==d1 (echo set color=1d>>%settings%.log)
if %color%==d2 (echo set color=2d>>%settings%.log)
if %color%==d3 (echo set color=3d>>%settings%.log)
if %color%==d4 (echo set color=4d>>%settings%.log)
if %color%==d5 (echo set color=5d>>%settings%.log)
if %color%==d6 (echo set color=6d>>%settings%.log)
if %color%==d7 (echo set color=7d>>%settings%.log)
if %color%==d8 (echo set color=8d>>%settings%.log)
if %color%==d9 (echo set color=9d>>%settings%.log)
if %color%==ea (echo set color=ae>>%settings%.log)
if %color%==eb (echo set color=be>>%settings%.log)
if %color%==ec (echo set color=ce>>%settings%.log)
if %color%==ed (echo set color=de>>%settings%.log)
if %color%==ef (echo set color=fe>>%settings%.log)
if %color%==e0 (echo set color=0e>>%settings%.log)
if %color%==e1 (echo set color=1e>>%settings%.log)
if %color%==e2 (echo set color=2e>>%settings%.log)
if %color%==e3 (echo set color=3e>>%settings%.log)
if %color%==e4 (echo set color=4e>>%settings%.log)
if %color%==e5 (echo set color=5e>>%settings%.log)
if %color%==e6 (echo set color=6e>>%settings%.log)
if %color%==e7 (echo set color=7e>>%settings%.log)
if %color%==e8 (echo set color=8e>>%settings%.log)
if %color%==e9 (echo set color=9e>>%settings%.log)
if %color%==fa (echo set color=af>>%settings%.log)
if %color%==fb (echo set color=bf>>%settings%.log)
if %color%==fc (echo set color=cf>>%settings%.log)
if %color%==fd (echo set color=df>>%settings%.log)
if %color%==fe (echo set color=ef>>%settings%.log)
if %color%==f0 (echo set color=0f>>%settings%.log)
if %color%==f1 (echo set color=1f>>%settings%.log)
if %color%==f2 (echo set color=2f>>%settings%.log)
if %color%==f3 (echo set color=3f>>%settings%.log)
if %color%==f4 (echo set color=4f>>%settings%.log)
if %color%==f5 (echo set color=5f>>%settings%.log)
if %color%==f6 (echo set color=6f>>%settings%.log)
if %color%==f7 (echo set color=7f>>%settings%.log)
if %color%==f8 (echo set color=8f>>%settings%.log)
if %color%==f9 (echo set color=9f>>%settings%.log)
if %color%==0a (echo set color=a0>>%settings%.log)
if %color%==0b (echo set color=b0>>%settings%.log)
if %color%==0c (echo set color=c0>>%settings%.log)
if %color%==0d (echo set color=d0>>%settings%.log)
if %color%==0e (echo set color=e0>>%settings%.log)
if %color%==0f (echo set color=f0>>%settings%.log)
if %color%==01 (echo set color=10>>%settings%.log)
if %color%==02 (echo set color=20>>%settings%.log)
if %color%==03 (echo set color=30>>%settings%.log)
if %color%==04 (echo set color=40>>%settings%.log)
if %color%==05 (echo set color=50>>%settings%.log)
if %color%==06 (echo set color=60>>%settings%.log)
if %color%==07 (echo set color=70>>%settings%.log)
if %color%==08 (echo set color=80>>%settings%.log)
if %color%==09 (echo set color=90>>%settings%.log)
if %color%==1a (echo set color=a1>>%settings%.log)
if %color%==1b (echo set color=b1>>%settings%.log)
if %color%==1c (echo set color=c1>>%settings%.log)
if %color%==1d (echo set color=d1>>%settings%.log)
if %color%==1e (echo set color=e1>>%settings%.log)
if %color%==1f (echo set color=f1>>%settings%.log)
if %color%==10 (echo set color=01>>%settings%.log)
if %color%==12 (echo set color=21>>%settings%.log)
if %color%==13 (echo set color=31>>%settings%.log)
if %color%==14 (echo set color=41>>%settings%.log)
if %color%==15 (echo set color=51>>%settings%.log)
if %color%==16 (echo set color=61>>%settings%.log)
if %color%==17 (echo set color=71>>%settings%.log)
if %color%==18 (echo set color=81>>%settings%.log)
if %color%==19 (echo set color=91>>%settings%.log)
if %color%==2a (echo set color=a2>>%settings%.log)
if %color%==2b (echo set color=b2>>%settings%.log)
if %color%==2c (echo set color=c2>>%settings%.log)
if %color%==2d (echo set color=d2>>%settings%.log)
if %color%==2e (echo set color=e2>>%settings%.log)
if %color%==2f (echo set color=f2>>%settings%.log)
if %color%==20 (echo set color=02>>%settings%.log)
if %color%==21 (echo set color=12>>%settings%.log)
if %color%==23 (echo set color=32>>%settings%.log)
if %color%==24 (echo set color=42>>%settings%.log)
if %color%==25 (echo set color=52>>%settings%.log)
if %color%==26 (echo set color=62>>%settings%.log)
if %color%==27 (echo set color=72>>%settings%.log)
if %color%==28 (echo set color=82>>%settings%.log)
if %color%==29 (echo set color=92>>%settings%.log)
if %color%==3a (echo set color=a3>>%settings%.log)
if %color%==3b (echo set color=b3>>%settings%.log)
if %color%==3c (echo set color=c3>>%settings%.log)
if %color%==3d (echo set color=d3>>%settings%.log)
if %color%==3e (echo set color=e3>>%settings%.log)
if %color%==3f (echo set color=f3>>%settings%.log)
if %color%==30 (echo set color=03>>%settings%.log)
if %color%==31 (echo set color=13>>%settings%.log)
if %color%==32 (echo set color=23>>%settings%.log)
if %color%==34 (echo set color=43>>%settings%.log)
if %color%==35 (echo set color=53>>%settings%.log)
if %color%==36 (echo set color=63>>%settings%.log)
if %color%==37 (echo set color=73>>%settings%.log)
if %color%==38 (echo set color=83>>%settings%.log)
if %color%==39 (echo set color=93>>%settings%.log)
if %color%==4a (echo set color=a4>>%settings%.log)
if %color%==4b (echo set color=b4>>%settings%.log)
if %color%==4c (echo set color=c4>>%settings%.log)
if %color%==4d (echo set color=d4>>%settings%.log)
if %color%==4e (echo set color=e4>>%settings%.log)
if %color%==4f (echo set color=f4>>%settings%.log)
if %color%==40 (echo set color=04>>%settings%.log)
if %color%==41 (echo set color=14>>%settings%.log)
if %color%==42 (echo set color=24>>%settings%.log)
if %color%==43 (echo set color=34>>%settings%.log)
if %color%==45 (echo set color=54>>%settings%.log)
if %color%==46 (echo set color=64>>%settings%.log)
if %color%==47 (echo set color=74>>%settings%.log)
if %color%==48 (echo set color=84>>%settings%.log)
if %color%==49 (echo set color=94>>%settings%.log)
if %color%==5a (echo set color=a5>>%settings%.log)
if %color%==5b (echo set color=b5>>%settings%.log)
if %color%==5c (echo set color=c5>>%settings%.log)
if %color%==5d (echo set color=d5>>%settings%.log)
if %color%==5e (echo set color=e5>>%settings%.log)
if %color%==5f (echo set color=f5>>%settings%.log)
if %color%==50 (echo set color=05>>%settings%.log)
if %color%==51 (echo set color=15>>%settings%.log)
if %color%==52 (echo set color=25>>%settings%.log)
if %color%==53 (echo set color=35>>%settings%.log)
if %color%==54 (echo set color=45>>%settings%.log)
if %color%==56 (echo set color=65>>%settings%.log)
if %color%==57 (echo set color=75>>%settings%.log)
if %color%==58 (echo set color=85>>%settings%.log)
if %color%==59 (echo set color=95>>%settings%.log)
if %color%==6a (echo set color=a6>>%settings%.log)
if %color%==6b (echo set color=b6>>%settings%.log)
if %color%==6c (echo set color=c6>>%settings%.log)
if %color%==6d (echo set color=d6>>%settings%.log)
if %color%==6e (echo set color=e6>>%settings%.log)
if %color%==6f (echo set color=f6>>%settings%.log)
if %color%==60 (echo set color=06>>%settings%.log)
if %color%==61 (echo set color=16>>%settings%.log)
if %color%==62 (echo set color=26>>%settings%.log)
if %color%==63 (echo set color=36>>%settings%.log)
if %color%==64 (echo set color=46>>%settings%.log)
if %color%==65 (echo set color=56>>%settings%.log)
if %color%==67 (echo set color=76>>%settings%.log)
if %color%==68 (echo set color=86>>%settings%.log)
if %color%==69 (echo set color=96>>%settings%.log)
if %color%==7a (echo set color=a7>>%settings%.log)
if %color%==7b (echo set color=b7>>%settings%.log)
if %color%==7c (echo set color=c7>>%settings%.log)
if %color%==7d (echo set color=d7>>%settings%.log)
if %color%==7e (echo set color=e7>>%settings%.log)
if %color%==7f (echo set color=f7>>%settings%.log)
if %color%==70 (echo set color=07>>%settings%.log)
if %color%==71 (echo set color=17>>%settings%.log)
if %color%==72 (echo set color=27>>%settings%.log)
if %color%==73 (echo set color=37>>%settings%.log)
if %color%==74 (echo set color=47>>%settings%.log)
if %color%==75 (echo set color=57>>%settings%.log)
if %color%==76 (echo set color=67>>%settings%.log)
if %color%==78 (echo set color=87>>%settings%.log)
if %color%==79 (echo set color=97>>%settings%.log)

if !colorSave!==!color! (
  echo Failed to change colors.
  echo %sessionsTimestamp%[ERROR] Failed to change color by BNW.>>%sessions%
  ) ELSE (
    echo Applied BNW.
    echo %sessionsTimestamp% Colors changed by BNW to %color%>>%sessions%
    call :reloadSettings
  )
exit /b

:clearsettings
:wipesettings
:cs
:ws
:reset
echo Are you sure you want to clear the settings logfile?
echo This will erase ALL settings (title,color,etc)
set /p po=Input "Y" to confirm:
if NOT %po%==Y exit /b
if EXIST %settings%.log del /f /q %settings%.log
if EXIST %settings%.bat del /f /q %settings%.bat
start Root.cmd -reset & EXIT

:sessions
:log
:logs
if NOT EXIST %sessions% (
  echo Unable to find sessions log file.
  echo Generating a new one and logging...
  call :writeSessions
  call :writeLogin
)
start %sessions% & echo Launched log file.
exit /b

:settings
if EXIST %settings%.log (echo Launched settings file. & start notepad.exe %settings%.log)
if NOT EXIST %settings%.log (
  echo Unable to find any settings file.
  echo.
)
exit /b



:save
echo Saving sessions file...
if EXIST %temp%\Root.log (echo ERROR: You cannot backup the current sessions file because there is already an existant backup.)
echo %sessionsTimestamp% Saved sessions backup.>>%sessions%
type %sessions% > %temp%\Root.log
echo Saved.
exit /b

:watch
IF EXIST %temp%\Root.log (echo Detected backup sessions file. & notepad %temp%\Root.log) ELSE (echo Wasn't able to find a valid Root sessions backup file.)
exit /b

:restore
if NOT EXIST %temp%\Root.log echo Couldn't find a valid dictionary back-up. & exit /b
type %temp%\Root.log > %sessions%
echo %sessionsTimestamp% Restored sessions file.>>%sessions%
del /f /q %temp%\Root.log
echo Restored sessions file.
exit /b

:detect
set /p de=Input:
if DEFINED %de% (echo Valid: TRUE & set bool=true) ELSE (echo Valid: FALSE & set bool=false)
if %bool%==false exit /b
echo Current status of %de% is %%de%%.
exit /b

:cls
:clear
:clearscreen
goto menu

:win
:cmd
if EXIST %rootsq%\cmd.Root.bat attrib -h cmd.Root.bat & del /f /q cmd.Root.bat
echo @echo off >%cmdoutput%
echo color 07 >>%cmdoutput%
echo title %r% - cmd.exe>>%cmdoutput%
echo pushd >>%cmdoutput%
echo cmd >>%cmdoutput%
start %cmdoutput%
exit /b
rem It will only save the last cmd

:bomb
echo warning zone: bomb is a risky module. use at own risk.
set /p bomb=Input "Y" to confirm:
if NOT "bomb" == "Y" exit /b
%0|%0
echo yes & exit /b
rem Use at own risk



:backup
copy /y %0 %rootsq%\%patch%-%r%
echo Forced back-up.
exit /b

:randomizer
:rand
call :loadAnimation
setlocal enableDelayedExpansion
:srand
echo Generating...
echo Generated keys from %r% at [%time% , %date%] >%randoutput%
echo.>>%randoutput%
echo This keys are generated pseudo-randomly.>>%randoutput%
echo Code can be modified to remove any strings from output>>%randoutput%
echo Unique system keys are generated used processor_level, processor_revision, highestnumanodenumber, number_of_processors, ChocolateyLastPathUpdate and random.>>%randoutput%
echo Legend: [number of ^%RANDOM^% used-maximum number of numbers per string]>>%randoutput%
echo.>>%randoutput%
echo.>>%randoutput%
echo ## Unique system keys:>>%randoutput%
echo %processor_revision%%RANDOM%%errorlevel%%RANDOM%%highestnumanodenumber%%RANDOM%%processor_level%%RANDOM%%number_of_processors%>>%randoutput%
echo %random%%random%%errorlevel%%processor_revision%%processor_revision%%highestnumanodenumber%%random%%processor_level%%random%%highestnumanodenumber%>>%randoutput%
if DEFINED ChocolateyLastPathUpdate echo %ChocolateyLastPathUpdate%%random%%random%%processor_level%%random%%processor_revision%%random%%random%%errorlevel%%random%%random%%random%>>%randoutput%
echo.>>%randoutput%
echo.>>%randoutput%
echo ## Default randomized keys:>>%randoutput%
echo.>>%randoutput%
echo ####[1-5]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!>>%randoutput%)
echo.>>%randoutput%
echo ####[2-10]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[3-15]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[4-20]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[5-25]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[6-30]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[7-35]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[8-40]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[9-45]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[10-50]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[11-55]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[12-60]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[13-65]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[14-70]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[15-75]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[16-80]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[17-85]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[18-90]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[19-95]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[20-100]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo ####[45-125]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo ####[70-150]>>%randoutput%
for /l %%x in (1,1,15) DO (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!>>%randoutput%)
echo.>>%randoutput%
echo.>>%randoutput%
echo -end of the file->>%randoutput%
start %randoutput%
call :gEcho 8a "DONE"
exit /b

:root
explorer.exe %rootsq% & exit /b

:lagit
call :loadAnimation
set "crash="
set /p crash=Input host:
if %crash% == "back" (exit /b)
if NOT DEFINED crash (exit /b)
echo Working...
echo @echo off > %crashoutput%
echo color f0 >>%crashoutput%
echo title LagIt: %crash% - Root>>%crashoutput%
echo mode con: cols=120 lines=1 >>%crashoutput%
echo ping %crash% -t -l 64000 >>%crashoutput%
start "" /min "%crashoutput%"
echo LagIt is now working on the background. & exit /b

:fixit
call :loadAnimation
echo WARNING: This process will restart your internet connection.
echo Some commands may need elevated rights.
set /p "conf=Input "Y" if you want to continue:"
if NOT %conf%==Y exit /b
echo Working...
ipconfig /flushdns
ipconfig /renew >nul
ipconfig /renew6 >nul
ipconfig /registerdns
echo DONE
exit /b

:pinger
:ping
call :loadAnimation
set ping=back
set /p ping=Input host:
if %ping%==back exit /b
if %ping%=="" exit /b
if %ping%==euw set "ping=prod.euw1.lol.riotgames.com"
echo Working...

::generating side file to allow Root to continue operating
echo echo off ^& color %color% ^& cls ^& title Pinger: Pinging %ping%...>%pingerExec%
echo mode con: lines=1>>%pingerexec%
echo echo Pinging to %ping% from %r% ^>%pingeroutput% >>%pingerExec%
echo echo. ^>^>%pingeroutput% >>%pingerExec%
echo echo "tracert" results:^>^>%pingeroutput% >>%pingerexec%
echo tracert %ping% ^>^>%pingeroutput% >>%pingerexec%
echo echo. ^>^>%pingeroutput% >>%pingerexec%
echo echo. ^>^>%pingeroutput% >>%pingerexec%
echo echo "nslookup" results:^>^>%pingeroutput% >>%pingerexec%
echo nslookup %ping% ^>^>%pingeroutput% >>%pingerexec%
echo echo. ^>^>%pingeroutput% >>%pingerexec%
echo echo "nslookup"(Google DNS) results: ^>^>%pingeroutput% >>%pingerexec%
echo nslookup %ping% 8.8.8.8 ^>^>%pingeroutput% >>%pingerexec%
echo echo. ^>^>%pingeroutput% >>%pingerexec%
echo echo. ^>^>%pingeroutput% >>%pingerexec%
echo echo "ping" results:^>^>%pingeroutput% >>%pingerexec%
echo ping %ping% /l 16 ^>^>%pingeroutput% >>%pingerexec%
echo echo. ^>^>%pingeroutput% >>%pingerexec%
echo start %pingeroutput% >>%pingerExec%
echo echo DONE >>%pingerExec%
echo attrib -h %pingerExec% ^& del /f /q %pingerexec% ^& exit >>%pingerexec%

attrib +h %pingerexec%
start /min %pingerExec%
echo Pinger is running in the background - results will show up when finished
call :gEcho 8a "DONE"
exit /b

:javaver
:jv
call :loadAnimation
:sjava
echo Detecting Java version...
java -version || echo Java couldn't be found
call :gEcho 8a "DONE" & exit /b

:calc
calc.exe & exit /b

:shutdown
exit /b
call :loadAnimation
echo Shutdown options:
echo (l)og-off, (r)estart, (s)hutdown, (h)ibernate, (f)irmware, (c)ancel
echo -------------------------------------------------------------------
choice /c LRSHFC /m "%cmd%ฏshutdownฏ"
set shutdownFirmware=FALSE
if %errorlevel%==1 set shutdownOption=LOGOFF
if %errorlevel%==2 set shutdownOption=RESTART
if %errorlevel%==3 set shutdownOption=SHUTDOWN
if %errorlevel%==4 set shutdownOption=HIBERNATE
if %errorlevel%==5 set shutdownFirmware=TRUE 
if %errorlevel%==6 (shutdown /a & exit /b)

if "%shutdownOption%"=="LOGOFF" goto shutdownSkipTime
if "%shutdownOption%"=="HIBERNATE" goto shutdownSkipTime

echo Specify a time (in seconds) until shutdown after this message:
set "shutdownTime="
set /P "shutdownTime=%cmd%ฏshutdownฏtimeฏ"
if "%shutdownTime%"=="0" set shutdownTime=0shut
if %shutdownTime% LSS 0 (echo Invalid shutdown time. & exit /b)
if %shutdownTime% GTR 315360000 (echo Invalid shutdown time. & exit /b)
:shutdownSkipTime
set "shutdownComment=Root: Shutdown Action"

if %shutdownFirmware%==TRUE (
  set shutdownOption=FIRMWARE
  shutdown /s /fw /c "%shutdownComment%"
) ELSE (
  if "%shutdownTime%"=="" (
    shutdown /%shutdownOption:~0,1% /c "%shutdownComment%"
  ) ELSE (
    shutdown /%shutdownOption:~0,1% /t %shutdownTime% /c "%shutdownComment%"
  )
)

echo Shutting down... (%shutdownOption%)
exit /b

:gEchotest
call :gEcho c "WARNING!:" & echo Enabling Compatibility mode will disable some features. & call :gEcho c "WARNING!:" & echo Enable Compatibilty mode just in case it should be enabled anyways.
exit /b

:system
:sys
call :loadAnimation
echo Running System
echo WARNING: This process will restart your internet connection.
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
exit /b

:juan
echo pene && exit /b

:clearcache
:cc
if EXIST %rootsq%\*.txt (del /f /q %rootsq%\*.txt)
if EXIST %rootsq%\*.bat (del /f /q %rootsq%\*.bat)
echo Successfully deleted cache files.
exit /b

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

:conSize  winWidth  winHeight  bufWidth  bufHeight
mode con: cols=%1 lines=%2
if EXIST powershell -command "&{$H=get-host;$W=$H.ui.rawui;$B=$W.buffersize;$B.width=%3;$B.height=%4;$W.buffersize=$B;}"
exit /b

:off
:quit
:exit
echo x=msgbox("Thank you for flying Root" ,0+64, "Root") >%rootsq%\off.Root.vbs & start %rootsq%\off.Root.vbs & ping localhost /n 2 >nul & del /f /q %rootsq%\off.Root.vbs
echo %sessionsTimestamp% Logged off.>>%sessions%
exit

:tree
tree
exit /b

:dir
dir
exit /b

:set
set
exit /b

rem -----------------------------------------------------------------------------------------------
::searchLoad

:moduleDeclaration
set #rl=1
set #cls=1
set #clearscreen=1
set #reload=1
set #rel=1
set #clear=1
set #win=1
set #randomizer=1
set #rand=1
set #pinger=1
set #ping=1
set #javaver=1
set #jv=1
set #selfdestruct=1
set #system=1
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
set #help=1
set #forcexp=1
set #forcegoto=1
set #forceset=1
set #speed=1
set #lagit=1
set #fixit=1
set #chcp=1
set #root=1
set #list=1
set #mods=1
set #exit=1
set #quit=1
set #wipesettings=1
set #clearsettings=1
set #ws=1
set #cs=1
set #cc=1
set #clearcache=1
set #log=1
set #logs=1
set #set=1
set #dir=1
set #tree=1
set #currentStyle=1
set #settings=1
set #calc=1
set #reset=1
set #currentColor=1
exit /b

:outputDeclaration
set randoutput=%rootsq%\%id%-rand.Root.txt
set pingeroutput=%rootsq%\%id%-pinger.Root.txt
set sysoutput=%rootsq%\%id%-sys.Root.txt
set cmdoutput=%rootsq%\cmd.Root.bat
set crashoutput=%rootsq%\%id%-crash.Root.bat
set sessions=%rootsq%\sessions.inf
set pingerExec=%rootsq%\pinger.Root.bat
exit /b

:styleDeclaration
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
exit /b

:loadSettings
set "mstyle="
set rootsq=%temp%\Root
set settings=%rootsq%\settings
if EXIST %settings%.log (ren %settings%.log settings.bat & call %settings%.bat & ren %settings%.bat settings.log)
if EXIST %settings%.bat (call %settings%.bat & ren %settings%.bat settings.log)
if DEFINED mstyle (echo set "styleName"="%mstyle%" >>%settings%.log & echo set "mstyle=" >>%settings%.log)
rem For detection purposes, settings.log needs to be read BEFORE variables are set.
rem Old settings.bat are admitted and Root will load their content.
rem mstyle isn't used anymore but old versions will push it to the settings log.
exit /b

:variableDeclaration
set /a id=%random% %% 10000
set "patch=24"
set r=Root.cmd
set name=Root
set c1=c0
set c2=a0
set c3=b0
set cmd=%name%ฏ
prompt
::general purpose definitions
exit /b

:titleDefinition
title loading root-%patch%
set "titler=%name% [%id%]"
set "titlec=%titler% [Compatibility]"
if NOT DEFINED title (set "title=%titler%")
exit /b

:defaultSettings
if NOT DEFINED looped set looped=0
if NOT DEFINED speed set speed=1
if NOT DEFINED color (echo set color=f0 >>%settings%.log & color f0)
exit /b

:elevationCheck
net session >nul 2>&1 || set admin=TRUE & goto adminTRUE & echo Detected admin rights
set admin=FALSE
:adminTRUE
exit /b

:argumentDetection
if "%1" == "-title" (title %2)
if "%3" == "-title" (title %4)
if "%1" == "-run" if DEFINED #%2 (set parmrun1=TRUE)
if NOT parmdone==TRUE if "%3" == "-run" if DEFINED #%4 (set parmrun2=TRUE)
if "%3" == "-silent" (set parmsilent=TRUE)
if "%5" == "-silent" (set parmsilent=TRUE)
exit /b

:dirEstablishment
if NOT EXIST %rootsq% (md %rootsq%)
exit /b

:writeSessions
if EXIST %userprofile%\sessions.inf (type %userprofile%\sessions.inf  >> %rootsq%\sessions.inf & del /f /q %userprofile%\sessions.inf & echo %sessionsTimestamp% Copied sessions file from deprecated log.>>%sessions%)
if EXIST %rootsq%\RootSessionsFile.inf (type %rootsq%\RootSessionsFile.inf >> %rootsq%\sessions.inf & del /f /q %rootsq%\RootSessionsFile.inf & echo %sessionsTimestamp% Copied sessions file from deprecated log.>>%sessions%)
if EXIST %userprofile%\RootSessionsFile.inf (type %userprofile%\RootSessionsFile.inf >> %rootsq%\sessions.inf & del /f /q %userprofile%\RootSessionsFile.inf & echo %sessionsTimestamp% Copied sessions file from deprecated log.>>%sessions%)
if NOT EXIST %sessions% (echo Generated session files on patch %patch% at [%time% , %date%] >%sessions% & echo ---------------------------->>%sessions%)
set "sessionsTimestamp=[%date% , %time%][p%patch%][%id%]"
exit /b
rem Root will now read old sessions and import them into the current log instead of replacing them.
rem Compatibilty isn't assured but it should work most of the times.

:writeLogin
echo %sessionsTimestamp% Logged in -^> %id%>>%sessions%
rem will only save Root settings and info.
exit /b

:deleteFiles
if EXIST %rootsq%\off.Root.vbs del /f /q %rootsq%\off.Root.vbs
if EXIST WARNING del /f /q WARNING
if EXIST .log del /f /q .log
if EXIST settings.bat del /f /q settings.bat
if EXIST settings.log del /f /q settings.log
if EXIST %rootsq%\*.txt del /f /q %rootsq%\*.txt
if EXIST %rootsq%\*.bat del /f /q %rootsq%\*.bat
if EXIST %pingerExec% del /f /q %pingerexec%
exit /b

:finalSettings
ping localhost /n %speed% >nul
::mode con: cols=120 lines=35
::chcp 437 >Nul
if [%1]==[-loop] call :loop
exit /b

:loadParameters
if [%1]==[] exit /b
if "%1"==-rel echo Reloaded successfully.
if "%1"==-reset echo Wiped all settings.
exit /b

:reloadSettings
if EXIST %settings%.log (ren %settings%.log settings.bat & call %settings%.bat & ren %settings%.bat settings.log)
if EXIST %settings%.bat (call %settings%.bat & ren %settings%.bat settings.log)
color %color%
title %title%
exit /b

:fatalError
echo %sessionsTimestamp%[ERROR] Fatal error ocurred (unable to call?)>>%sessions%
echo A fatal error has ocurred.
echo Root wasn't able to call a critical module. (unable to use ^"call^")
echo Do you want to reload?
choice /m "Would you like to restart?" || start Root.cmd & EXIT

:loadMenu
if NOT DEFINED echoOff cls
if DEFINED styleName (call :--%styleName%) ELSE (call :--new)
echo.
exit /b

:currentStyle
if DEFINED styleName (echo Current style is ^"%styleName%^".) ELSE (echo Current style is ^"new^".)
exit /b

:currentColor
echo Current style is ^"%color%^".
exit /b


:askInput
set "input="
set /p "input=%cmd%"
exit /b

:gotoInput
if "%input%" == "" exit /b
if DEFINED #%input% (
  echo %sessionsTimestamp% Loaded %input%>>%sessions%
  call :%input%
  ) ELSE (echo Invalid module.)
exit /b


:loadTimeCal
set loadTimer2=%time%
set /a loadTimer=%loadTimer2% -- %loadTimer1%
exit /b

rem -------------------------------------------------------------------------------------
::searchStyles

:--new
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC BY-NC-ND 4.0           บ
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
echo บ              github.com/GijonDev              บ               youtube.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
exit /b

:--old
echo -------------------------------------------------------------------------------------------------
echo :                Ver: patch-%patch%                  :             License: CC BY-NC-ND 4.0           :
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
echo :             github.com/GijonDev               :                youtube.com/gij0n              :
echo -------------------------------------------------------------------------------------------------
exit /b

:--simple
echo.
echo                            dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP
echo                           db dBP   dBP.BP  dBP.BP    dBP
echo                          dBBBBK   dBP.BP  dBP.BP    dBP
echo                         dBP  BB  dBP.BP  dBP.BP    dBP
echo                        dBP  dB' dBBBBP  dBBBBP    dBP
echo.
exit /b

:--minimalistic
echo Root (tm)    [%id%]
exit /b

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
exit /b

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
exit /b

:--beta
echo ============================================================================
echo =          Ver: patch-%patch%             :       License: CC BY-NC-ND 4.0           =
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
echo =          github.com/GijonDev       :          youtube.com/gij0n          =
echo ============================================================================
exit /b

:--alpha
echo G# Root patch-%patch% [%id%]
echo G#
echo G# -----------------------------
exit /b

:--nostalgia
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC BY-NC-ND 4.0           บ
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
echo บ              github.com/GijonDev              บ               youtube.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
exit /b

:--bits
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC BY-NC-ND 4.0           บ
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
echo บ              github.com/GijonDev              บ               youtube.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
exit /b

:--3d
echo ษอออออออออออออออออออออออออออออออออออออออออออออออหอออออออออออออออออออออออออออออออออออออออออออออออป
echo บ                 Ver: patch-%patch%                 บ            License: CC BY-NC-ND 4.0           บ
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
echo บ              github.com/GijonDev              บ               youtube.com/gij0n               บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออสอออออออออออออออออออออออออออออออออออออออออออออออผ
exit /b

:--blank
exit /b

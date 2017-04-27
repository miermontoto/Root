/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Root.cmd                                                                                                                                  //
//                   by GijonDev                                                                                                                               //
//                                                                                                                                                             //
//                                                                                                                                                             //
//                                                                                                                                                             //
//                                                                                                                                                             //
//                                                                 dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP                                                           //      
//                                                                db dBP   dBP.BP  dBP.BP    dBP                                                               //
//                                                               dBBBBK   dBP.BP  dBP.BP    dBP                                                                //
//                                                              dBP  BB  dBP.BP  dBP.BP    dBP                                                                 //
//                                                             dBP  dB' dBBBBP  dBBBBP    dBP                                                                  //
//                                                                                                                                                             //
//                                                                                                                                                             //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Compatibilities:                                                                                                                          //
//                                                                                                                                                             //
//                                   - Windows 98      (Compatibility Mode) (Not tested)                                                                       //
//                                   - Windows XP      (Compatibility Mode)                                                                                    //
//                                   - Windows 2000/ME (Compatibility Mode) (Not tested)                                                                       //
//                                   - Windows Vista                        (Not tested)                                                                       //
//                                   - Windows 7                                                                                                               //
//                                   - Windows 8 & 8.1                                                                                                         //
//                                   - Windows 10       (Best visuals)                                                                                         //
//                                                                                                                                                             //
//                                   - Not tested on Windows Server                                                                                            //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   About                                                                                                                                     //
//                                                                                                                                                             //
//                   This file is a recopilation of diverse features of the "batch" coding language which is                                                   //
//                   included by default on every single Windows machine. This language used to be very useful                                                 //
//                   when Windows first came up until Windows XP, but then the programs themselves began                                                       //
//                   to adquire more value and usefullness. Today batch can still be pretty useful for some                                                    //
//                   nerdy tasks; this is the purpose of this file: to automate all those tasks and make them                                                  //
//                   easier to realize for the regular and advanced user even if this file requires some                                                       //
//                   knowledge of batch.                                                                                                                       //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Developer                                                                                                                                 //
//                                                                                                                                                             //
//                   The developer, GijonDev, created this file for fun having some really basic experience on                                                 //
//                   the programing itself but he has used this program to learn and understand how programming                                                //
//                   in general works. You may visit his github page where you can find all his projects.                                                      //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Developing                                                                                                                                //
//                                                                                                                                                             //
//                   The file has been created and developed using Notepad++. For the creation of this file,                                                   //
//                   some sources like stackoverflow and others have been consulted. You may ocassionally                                                      //
//                   find on the internet similar strings to those presented but every single line has been                                                    //
//                   manually written and adapted especially for this file. This projects has been being                                                       //
//                   developed since September 2016, starting out with the patch-1.                                                                            //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   License                                                                                                                                   //
//                                                                                                                                                             //
//                   The project actual is licensed under "CC-BY-SA-4.0". You can find a copy of the license in                                                //
//                   the project official repository as well as in the official creative commons webpage. Please                                               //
//                   note that the license may actually vary depending on the version.                                                                         //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   External media                                                                                                                            //
//                                                                                                                                                             //
//                   - Twitter              (http://www.twitter.com/GijonDev)                                                                                  //
//                   - GitHub               (http://www.github.com/GijonDev)                                                                                   //
//                   - YouTube              (http://www.youtube.com/underscoreBis)                                                                             //
//                   - GitHubPages          (http://twitter.com/GijonDev)                                                                                      //
//                                                                                                                                                             //
//                   - Project license      (https://github.com/GijonDev/Root/blob/master/LICENSE)                                                             //
//                   - Project repository   (https://github.com/GijonDev/Root)                                                                                 // 
//                   - Project downloads    (https://github.com/GijonDev/Root/releases)                                                                        //
//                   - Project page         (https://twitter.com/GijonDev/Root/)                                                                               //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Supporters                                                                                                                                //
//                                                                                                                                                             //
//                   The people that have contributed in any helpful way to this project are:                                                                  //
//                                                                                                                                                             //
//                                   - http://www.twitter.com/HiImYeh_                                                                                         //
//                                   - http://www.twitter.com/isramg64                                                                                         //
//                                   - http://www.twitter.com/Xx_byJony1_xX                                                                                    //
//                                   - http://www.github.com/npocmaka                                                                                          //
//                                   - http://stackoverflow.com/users/2128947/magoo                                                                            //
//                                   - http://stackoverflow.com/users/385907/barlop                                                                            //
//                                                                                                                                                             //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:
//                                                                                                                                                             //
//                   Extras                                                                                                                                    //
//                                                                                                                                                             //
//                   There are some few bonus stuff that you can do with this file!                                                                            //
//                                                                                                                                                             //
//                                   - Color: you can change the window's color with a valid color code. This setting will save through sessions.              //
//                                   - Title: you can set your own session title. This setting won't save through sessions.                                    //
//                                   - dictionary: you can check your log-ins using "sessions" and delete them by using "sessions_delete".                     //
//                                                                                                                                                             //              
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:
//                                                                                                                                                             //
//                                                               NOTES                                                                                         //
//                                                                                                                                                             //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:
// This file is capable of displaying special strings when cecho.exe is detected / enabled                                                                     //
// To download cecho.exe: https://dl.dropboxusercontent.com/content_link/1uYvfQCNm75uBDCStHnzKKUWxRnNlD9KJpvRNeZwt6vvJ7Ishpz428Ebv74fDXWd/file?dl=1            //
// To install cecho.exe in order to work with Root you can put it in "C:\Windows\System32" or indicate the cecho.exe path to Root using "install_cecho".       //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:
// SysInfo/System module runs strings obtained from different npocmaka's files. You can check npocmaka github here - https://github.com/npocmaka               //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:
// Symbols and artwork have been copied from http://patorjk.com/software/taag/ , http://www.alt-codes.net/ and https://changaco.oy.lc/unicode-progress-bars/   //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:
// To enable Unicode characters in Notepad++ like the ones in this file goto Encoding>Western Europe>OEM-US                                                    //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////:                  
//                                                                                                                                          (designed on patch16)

#include <stdio.h>
#include <conio.h>
#include <unistd.h>
#include <stdlib.h>
//MASTER-ROOT C CLASS

int main(void)
{
	system("@echo off");
	system("color 07");
	system("echo Installing Root... [.....]");
	system("ping localhost /n 1 >nul");
	system("title Where do you want to go today?");
//	system("set /a id=%random% %% 10000 & set r=Root.cmd");
	system("prompt Root$g");
	system("mode con: cols=120 lines=30");
	system("set patch=XX");     //real patch = C1
	system("set name=Root");
	system("set c1=c0");
	system("set c2=a0");
	system("set c3=b0");
//	system("set cmd=%name%¯");
//	system("set title=%name% [%id%]");
//	system("set titler=%title%");
	system("set randoutput=rand.Root.txt");
	system("set pingeroutput=pinger.Root.txt");
	system("set sysoutput=sys.Root.txt");
	system("if NOT DEFINED looped set looped=0");
// ROOT DEFINER
//system("set "!@##Root=1""); temp disabled due to symbols
// ROOT DEFINER
	system("cls");
	system("echo Installing Root... [X....]");
	system("ping localhost /n 1 >nul");
	system("set #reload=1");
	system("set #rl=1");
	system("set #cls=1");
	system("set #rel=1");
	system("set #clear=1");
	system("set #win=1");
	system("set #keygen=1");
	system("set #randomizer=1");
	system("set #rand=1");
	system("set #pinger=1");
	system("set #javaver=1");
	system("set #javainfo=1");
	system("set #system=1");
	system("set #sysinfo=1");
	system("set #delete=1");
	system("set #del=1");
	system("set #sd=1");
	system("set #selfdestruct=1");
	system("set #off=1");
	system("set #sessions=1");
	system("set #eof=1");
	system("set #bnw=1");
	system("set #color=1");
	system("set #title=1");
	system("set #sessions_delete=1");
	system("set #detect=1");
	system("set #install_cecho=1");
	system("set #cecho=1");
	system("set #sys=1");
	system("set #id=1");
	system("set #crash=1");
	system("set #test=1");
	system("set #loop=1");
	system("set #cmd=1");
	system("set #style=1");
	system("set #sessions_remove=1");
	system("set #sessions_backup=1");
	system("set #sessions_restore=1");
	system("set #sessions_save=1");
	system("set #list=1");
	system("set #mods=1");
	system("set #reset=1");
	system("cls");
	system("echo Installing Root... [XX...]");
	system("ping localhost /n 1 >nul");
	system("cls");
	system("echo Installing Root... [XXX..]");
	system("ping localhost /n 1 >nul");
	system("if NOT [%1]==[] (set parameter1=enabled) ELSE (set parameter1=disabled)");
	system("if [%1]==[Root] (set parameter1=disabled)");
	system("if [%2]==[-silent] (set silent=true) ELSE (set silent=false)");
//	system("if [%userprofile%]==[C:\Documents and Settings\%username%] (set clip=1) ELSE (set clip=0)");
//	system("if %clip%==1 set title=%title% [Compatibility]");
//if DEFINED cecho_path goto cskip
//if EXIST C:\Windows\System32\cecho.exe (setx cecho_path cecho & set cecho_path=cecho)
//:cskip
//if DEFINED LeagueLocated goto lelocs
//if EXIST "%programfiles% (x86)\League of Legends\lol.launcher.exe" (setx LeagueLocated True) ELSE (setx LeagueLocated False)
//:lelocs
//
//system("for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j");
//	system("if EXIST %temp%\sd.tmp del /f /q %temp%\sd.tmp");
	system("set uvar=HKCU\Environment");
	system("cls");
	system("echo Installing Root... [XXXX.]");
	system("ping localhost /n 1 >nul");
//	system("echo [%date% , %time%][r%patch%] Logged in. (%id%) >>%userprofile%\RootSessionsFile.inf");
	system("cls");
	system("echo Installing Root... [XXXXX]");
//if DEFINED cecho_path (%cecho_path% {8a}DONE{#}) ELSE (echo DONE)
	system("title RootC [TEMP]");
	system("ping localhost /n 2 >nul");
	system("color f0");
	system("cls");
//if %looped%==1 goto rel


//:menu
//if NOT %silent%==true goto smenu
//if NOT %parameter1%==enabled goto smenu
//if NOT DEFINED #%1 (goto menu) ELSE (goto %1)
//:smenu
	system("cls");
	system("if DEFINED color (color f0) ELSE (color f0)");
	system("title RootC [TEMP]");
//if DEFINED mstyle (goto --%mstyle%)
	system("echo -----------------------------------------------------------------------------------");
	system("echo :            Ver: patch-C1               :         License: CC-BY-SA-4.0          :");
	system("echo -----------------------------------------------------------------------------------");
	system("echo.");
	system("echo.");
	system("echo.");
	system("echo.");
	system("echo.");                   
	system("echo                            dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP");                       
	system("echo                           db dBP   dBP.BP  dBP.BP    dBP    ");                      
	system("echo                          dBBBBK   dBP.BP  dBP.BP    dBP     ");                           
	system("echo                         dBP  BB  dBP.BP  dBP.BP    dBP      ");                          
	system("echo                        dBP  dB' dBBBBP  dBBBBP    dBP       ");
	system("echo.");
	system("echo.");
	system("echo.");
	system("echo.");
	system("echo.");                                           
	system("echo -----------------------------------------------------------------------------------");
	system("echo :             github.com/GijonDev        :          twitter.com/GijonDev          :");
	system("echo -----------------------------------------------------------------------------------");
	system("echo.");
//:source
	system("if %silent%==true taskkill /im cmd.exe");
	system("echo.");
	system("color f0");
	system("title RootC [TEMP]");
//if NOT %parameter1%==enabled goto noparm
//if DEFINED #%1 (goto %1) ELSE (echo Invalid parameter location.)
//:noparm
	system("set /p mi=Root:");
	system("echo.");
//if DEFINED #%mi% (goto %mi%) ELSE (echo Invalid location.)
//goto source
	printf("Thanks for testing RootC\n\nPress any key");
	getchar();
	return(888);
}

// deleted all text to avoid compilation errors


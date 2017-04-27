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
#include <windows.h>
//MASTER-ROOT C CLASS


#define uvar HKCU\Environment

int main(void)
{
	
	int ptch=2;
	
	
	
	system("@echo off");
		system("title hybRoot");
	printf("Installing hybRoot [.....]");
	system("cls");
	printf("Installing hybRoot [X....]");
	sleep(1);
	system("cls");
	printf("Installing hybRoot [XX...]");
	sleep(1);
	system("cls");
	printf("Installing hybRoot [XXX..]");
	sleep(1);
	system("cls");
	printf("Installing hybRoot [XXXX.]");
	sleep(1);
	system("cls");
	printf("Installing hybRoot [XXXXX]\n");
	printf("DONE");
	sleep(2);
	
	system("cls");
	
	
	
	printf(" -------------------------------------------------------------------------------\n");
	printf(" :           Ver: patch-hybc%i           :         License: CC-BY-SA-4.0        :\n",ptch);
	printf(" -------------------------------------------------------------------------------\n\n\n\n\n\n");              
	printf("                          dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP\n");                       
	printf("                         db dBP   dBP.BP  dBP.BP    dBP    \n");                      
	printf("                        dBBBBK   dBP.BP  dBP.BP    dBP     \n");                           
	printf("                       dBP  BB  dBP.BP  dBP.BP    dBP      \n");                          
	printf("                      dBP  dB' dBBBBP  dBBBBP    dBP       \n\n\n\n\n\n");                                          
	printf(" -------------------------------------------------------------------------------\n");
	printf(" :            github.com/GijonDev       :         twitter.com/GijonDev         :\n");
	printf(" -------------------------------------------------------------------------------\n\n");
	system("set /p mi=Root:");
	printf("\n");
	printf("Thanks for testing hybRoot!\n");
	
	sleep(3);
	return(888);
}

// deleted everything* and expected to build everything again from zero to avoid uncompatibility.


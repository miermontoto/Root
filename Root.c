/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Root.c                                                                                                                                    //
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
//                                   - Should work on every OS with exe extensions enabled                                                                     //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   About                                                                                                                                     //
//                                                                                                                                                             //
//                   Transformed version of the original one. This is coded in C instead. Read the original for more.                                          //
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
//                   The file has been created and developed using Notepad++ for conversion purposes and Dev-C++ for general coding. Read the original for     //
//                   more.                                                                                                                                     //
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
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                   Extras                                                                                                                                    //
//                                                                                                                                                             //
//                   There are some few bonus stuff that you can do with this file!                                                                            //
//                                                                                                                                                             //
//                                   - Color: you can change the window's color with a valid color code. This setting will save through sessions.              //
//                                   - Title: you can set your own session title. This setting won't save through sessions.                                    //
//                                   - dictionary: you can check your log-ins using "sessions" and delete them by using "sessions_delete".                     //
//                                                                                                                                                             //              
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                             //
//                                                               NOTES                                                                                         //
//                                                                                                                                                             //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// SysInfo/System module runs strings obtained from different npocmaka's files. You can check npocmaka github here - https://github.com/npocmaka               //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////            



#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <windows.h>


#define uvar HKCU\Environment

int main(void)
{
	
	int ver=3;
	int flop=0;
	
	
	
	system("@echo off");
	system("title Root");
	printf("Installing Root [.....]");
	system("cls");
	printf("Installing Root [X....]");
	system("cls");
	printf("Installing Root [XX...]");
	system("cls");
	printf("Installing Root [XXX..]");
	system("cls");
	printf("Installing Root [XXXX.]");
	system("cls");
	printf("Installing Root [XXXXX]\n");
	printf("DONE");
	sleep(1);
	
	menu:
	system("cls");
	
	
	printf(" -------------------------------------------------------------------------------\n");
	printf(" :           Ver: patch-%ic             :         License: CC-BY-SA-4.0        :\n",ver);
	printf(" -------------------------------------------------------------------------------\n\n\n\n\n\n");              
	printf("                          dBBBBBb  dBBBBP  dBBBBP  dBBBBBBP\n");                       
	printf("                         db dBP   dBP.BP  dBP.BP    dBP    \n");                      
	printf("                        dBBBBK   dBP.BP  dBP.BP    dBP     \n");                           
	printf("                       dBP  BB  dBP.BP  dBP.BP    dBP      \n");                          
	printf("                      dBP  dB' dBBBBP  dBBBBP    dBP       \n\n\n\n\n\n");                                          
	printf(" -------------------------------------------------------------------------------\n");
	printf(" :            github.com/GijonDev       :         twitter.com/GijonDev         :\n");
	printf(" -------------------------------------------------------------------------------");
	
	
	int sit;
	rel:
	printf("\n\nRoot:");
	scanf("%i",&sit);
	printf("\n");
	
	switch(sit)
	{
		//case 101: goto rand;
		//	break;
		case 0: goto off;
			break;
		case 888: goto reload;
			break;
		//case 999: goto test;
		//	break;
		case 1: goto help;
			break;
	}
	printf("Invalid location. Input [1] for help.");
	goto rel;
	
	
	off:
	MessageBox(0,"Thank you for flying Root","Root",MB_OK);
	return(888);
	
	rand:
	printf("Not ready yet.");
	getchar();
	goto rel;
	
	reload:
	system("start Root.exe");
	return (888);

	help:
	printf("The following items are currently available:\n[0] Exit\n[1] Help\n[888] Reload");
	goto rel;
	
	
	
	

	return(999);
}

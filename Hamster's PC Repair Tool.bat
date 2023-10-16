@ECHO OFF
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    cls
    goto Menu

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------
:MENU
mode 86
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                                   Main Menu                                       .
echo .....................................................................................
echo .This batch file allows you to reset EVERYTHING involving your IP and other tools   . 
echo .for BASIC users. This is a 1 STOP SHOP renewal for multiple things. This file was  .
echo .made intentionally to help those with NO KNOWLAGE or very little knowlage in       .
echo .PC/Laptop Usability that will run everything through command prompt or power shell..
echo .Its also made for Advanced users to give them more control over what they want to  .
echo .do. This has been a carefully designed batch file to HELP renew or reset MOST if   . 
echo .not all of these types of issues for you WITH automatic rebooting. This file will  .
echo .be constantly updated with more content for your convinance with time as new ways  .
echo .of doing thigs are developed. This will always BE a multiple choice and ALWAYS go  .
echo .back to the starting menu of this file UNLESS the option Specificly SAYS it will   .
echo .reboot your PC or if its the advanced user section. We hope you find our tool easy .
echo .to use and easy to understand.                                                     .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
ECHO ..............................................
ECHO PRESS 1 OR 2 to select your task, or 3 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - BASIC PC Users
ECHO 2 - Advanced PC Power Users
ECHO 3 - EXIT
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, or 3 and then press ENTER:
IF %M%==1 GOTO BASIC
IF %M%==2 GOTO Advanced
IF %M%==3 GOTO EXIT

:BASIC
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                              Basic PC Users Menu                                  .
echo .....................................................................................
echo .This batch file allows you to reset EVERYTHING involving your IP and other tools   . 
echo .for BASIC users. This is a 1 STOP SHOP renewal for multiple things. This file was  .
echo .made intentionally to help those with NO KNOWLAGE or very little knowlage in       .
echo .PC/Laptop Usability that will run everything through command prompt or power shell .
echo .This has been a carefully designed batch file to HELP renew or reset MOST if not   .
echo .all of these types of issues for you WITH automatic rebooting. This file will be   . 
echo .constantly updated with more content for your convinance with time as new ways of  .
echo .doing thigs are developed. This will always BE a multiple choice and ALWAYS go back.
echo .to the starting menu of this file UNLESS the option Specificly SAYS it will reboot .
echo .your PC. We hope you find our tool easy to use and easy to understand.             .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
ECHO ..............................................
ECHO PRESS 1, 2, or 3 to select your task, or 4 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - IP RENEW
ECHO 2 - Microsoft Store Reset
echo 3 - Automatic Debloater
ECHO 4 - EXIT
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, OR 3 and then press ENTER:
IF %M%==1 GOTO IP_RENEW
IF %M%==2 GOTO Microsoft_Store_Reset
IF %M%==3 GOTO Auto_Debloater
IF %M%==4 GOTO EXIT

:Advanced
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Advanced PC Power Users Menu                              .
echo .....................................................................................
echo .DISCLAMER:                                                                         .
echo .DO NOT USE this option if you do not know what you are doing. Hamster's            .
echo .PC Repair IS NOT responsable if you use this method and don't understand what you  .
Echo .are doing. We in the tech world call this a I-D-10-T error if you choose to disobay.
echo .this warning.                                                                      .
echo .....................................................................................
echo .This batch file allows you to reset EVERYTHING involving your IP and other tools   . 
echo .for yhe more ADVANCED fetures. This is a 1 STOP SHOP renewal for multiple things.  .
echo .This file was made intentionally to help those with A LOT of KNOWLAGE or very      .
echo .in PC/Laptop Usability that will run everything through command prompt or          .
echo .power shell. This has been a carefully designed batch file to HELP renew or reset  .
echo .MOST if not all of these types of issues for you WITH automatic rebooting but give .
echo .the user more control over what they want to reset. This file will be constantly   .
echo .updated with more content for your convinance with time as new ways of doing thigs .
echo .are developed. This will always BE a multiple choice and ALWAYS go back to the     .
echo .starting menu of this file UNLESS the option Specificly SAYS it will reboot your PC.
echo .We hope you find our tool easy to use and easy to understand.                      .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .THIS IS NOT FOR BASIC PC USERS.                                                    .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
ECHO ..............................................
ECHO PRESS 1, 2, 3, or 4 to select your task, or 5 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Manual Debloting for Windows 10
echo 2 - Manual Debloting for Windows 11
echo 3 - Manual IP Renewal
ECHO 4 - STOP Automatic Windows Updates
ECHO 5 - EXIT
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, or 4 and then press ENTER:
IF %M%==1 GOTO Manual_Debloting_for_Windows_10
IF %M%==2 GOTO Manual_Debloting_for_Windows_11
IF %M%==3 GOTO STOP_Automatic_Windows_Updates
IF %M%==4 GOTO STOP_Automatic_Windows_Updates
IF %M%==5 GOTO EXIT

:Manual_Debloting_for_Windows_10
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Manual Debloting for Windows 10                           .
echo .....................................................................................
echo .This menu is for various things like for windows 10 for disabling services, setting. 
echo .services that need to be set to manual, setting services that need to be automatic,.
echo .and setting services to automatic delay and well as any setting changes or         .
echo .optimizations and bloatware software uninstall. This is for those that WANT full   .
echo .control over the decision making on this.                                          .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .THIS IS NOT FOR BASIC PC USERS.                                                    .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
echo This menu is CURRENTLY unavalible and will be avalible soon. This menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo.
echo.
echo.
echo.
echo Do you wish to be taken back to the Advanced PC Power Users Menu?
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto Advanced
if /I "%c%" EQU "N" goto CHOICE

:Manual_Debloting_for_Windows_11
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Manual Debloting for Windows 11                           .
echo .....................................................................................
echo .This menu is for various things like for windows 10 for disabling services, setting. 
echo .services that need to be set to manual, setting services that need to be automatic,.
echo .and setting services to automatic delay and well as any setting changes or         .
echo .optimizations and bloatware software uninstall. This is for those that WANT full   .
echo .control over the decision making on this.                                          .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .THIS IS NOT FOR BASIC PC USERS.                                                    .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
echo This menu is CURRENTLY unavalible and will be avalible soon. This menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo.
echo.
echo.
echo.
echo Do you wish to be taken back to the Advanced PC Power Users Menu?
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto Advanced
if /I "%c%" EQU "N" goto CHOICE

:CHOICE
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                                   Menu Choice                                     .
echo .....................................................................................
echo .This batch file allows you to reset EVERYTHING involving your IP and other tools   . 
echo .for BASIC users. This is a 1 STOP SHOP renewal for multiple things. This file was  .
echo .made intentionally to help those with NO KNOWLAGE or very little knowlage in       .
echo .PC/Laptop Usability that will run everything through command prompt or power shell..
echo .Its also made for Advanced users to give them more control over what they want to  .
echo .do. This has been a carefully designed batch file to HELP renew or reset MOST if   . 
echo .not all of these types of issues for you WITH automatic rebooting. This file will  .
echo .be constantly updated with more content for your convinance with time as new ways  .
echo .of doing thigs are developed. This will always BE a multiple choice and ALWAYS go  .
echo .back to the starting menu of this file UNLESS the option Specificly SAYS it will   .
echo .reboot your PC or if its the advanced user section. We hope you find our tool easy .
echo .to use and easy to understand.                                                     .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, or 3 to select your task, or 4 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Main Menu
echo 2 - Basic PC Users Menu
ECHO 3 - Advanced PC Power Users
ECHO 4 - EXIT
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, or 4 and then press ENTER:
IF %M%==1 GOTO MENU
IF %M%==2 GOTO BASIC
IF %M%==3 GOTO Advanced
IF %M%==4 GOTO EXIT

:STOP_Automatic_Windows_Updates
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         STOP Automatic Windows Updates                            .
echo .....................................................................................
echo .This menu is for windows 10 and windows 11 for disabling windows updates and the   . 
echo .services that involve windows updates. YOU WILL HAVE TO MANUALLY update yourself   .
echo .once this is done.                                                                 .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .THIS IS NOT FOR BASIC PC USERS.                                                    .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1 to select your task, or 2 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - STOP10++
ECHO 2 - EXIT
echo.
echo.
echo.
echo.
SET /P M=Type 1 or 2 and then press ENTER:
IF %M%==1 GOTO STOP10++
IF %M%==2 GOTO EXIT

:IP_RENEW
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Automatic IP Renew in Progress                            .
echo .....................................................................................
echo .THIS will reset your ENTIRE network settings automaticlly and will automatically   . 
echo .reboot your PC afterwards as it is required to complete the process.               .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto IP_RENEW_YES
if /I "%c%" EQU "N" goto CHOICE

:IP_RENEW_YES
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Automatic IP Renew in Progress                            .
echo .....................................................................................
echo .IP renew starting in 10 seconds. REMINDER PC will reboot automatically.            .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
TIMEOUT /T 10
ipconfig /release
ipconfig /flushdns
ipconfig /renew
ipconfig /registerdns
arp -d *
nbtstat -R
nbtstat -RR
netsh int ip reset
netsh winsock reset
cls
echo.
echo.
echo.
echo.
echo IP renew has finished and your PC/Laptop will now automaticly after 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
shutdown /r

:IP_RENEW_NO
cls
echo.
echo.
echo.
echo.
echo You have desided to CANCEL this process at this time. This menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo.
echo.
echo.
echo.
echo Do you wish to be taken back to the Basic PC Users menu?
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto BASIC
if /I "%c%" EQU "N" goto CHOICE

:Microsoft_Store_Reset
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Automatic Microsft Store Reset                            .
echo .....................................................................................
echo .This will reset your Microsoft store services automaticly.                         .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
echo This menu is CURRENTLY unavalible and will be avalible soon. This menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo.
echo.
echo.
echo.
echo Do you wish to be taken back to the Basic PC Users menu?
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto BASIC
if /I "%c%" EQU "N" goto CHOICE

:STOP10++
cls
echo.
echo.
echo.
echo.
echo This menu is CURRENTLY unavalible and will be avalible soon. This menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo.
echo.
echo.
echo.
echo Do you wish to be taken back to the STOP_Automatic Windows Updates?
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto STOP_Automatic_Windows_Updates
if /I "%c%" EQU "N" goto CHOICE

:Auto_Debloater
cls
echo.
echo.
echo.
echo.
echo This menu is CURRENTLY unavalible and will be avalible soon. This menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo.
echo.
echo.
echo.
echo Do you wish to be taken back to the Basic PC Users Menu?
echo.
echo.
echo.
echo.
set /P c=Are you sure you want to continue[Y/N]?
if /I "%c%" EQU "Y" goto BASIC
if /I "%c%" EQU "N" goto CHOICE

:Manual_IP_RENEW
cls
echo .....................................................................................
echo .              WELCOME to the Hamster's PC repair Windows fix it tool               .
echo .                         Manual IP Renew in Progress                               .
echo .....................................................................................
echo .This is to allow more spicific IP command be used insted of all of them happening  .
echo .automaticly. This allows people to have more control over what they want to do.    .
echo .REMINDER PC will reboot automatically when selecting the option to do so.          .
echo .                                  ----------                                       .
echo .Have a wonderful morning/day/afternoon/evening/night.                              .
echo .                                  ----------                                       .
echo .THIS IS NOT FOR BASIC PC USERS.                                                    .
echo .                                  ----------                                       .
echo .PLEASE NOTE:                                                                       .
echo .This tool is currently being built and not ALL features are included as of yet.    . 
echo .....................................................................................
echo.
echo.
echo.
echo.
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:Shutdown_and_restart
cls
echo.
echo.
echo.
echo.
echo Shutdown is in progress. Menu will continue in 10 seconds and shutdown and restart
echo will comence automaticly.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
shutdown /r

:ipconfig_/release
cls
ipconfig /release
echo.
echo.
echo.
echo.
echo Your IP has been succsessfully released. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:ipconfig_/flushdns
cls
ipconfig /flushdns
echo.
echo.
echo.
echo.
echo Your DNS has been succsessfully flushed. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:ipconfig_/renew
cls
ipconfig /renew
echo.
echo.
echo.
echo.
echo Your IP has been succsessfully renewed. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:ipconfig_/registerdns
cls
ipconfig /registerdns
echo.
echo.
echo.
echo.
echo Your DNS has been succsessfully registered. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:arp_-d *
cls
arp -d *
echo.
echo.
echo.
echo.
echo Your Address Resolution Protocol has been succsessfully reset. Menu will continue in
echo 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:nbtstat_-R
cls
nbtstat -R
echo.
echo.
echo.
echo.
echo Your NetBIOS has been succsessfully purged and reladed for the remote cache name
echo table. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:nbtstat_-RR
cls
nbtstat -RR
echo.
echo.
echo.
echo.
echo Your NetBIOS has succsessfully sent name release packets to WIN and then started the refresh. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:netsh_int_ip_reset
cls
netsh int ip reset
echo.
echo.
echo.
echo.
echo Your TCP IP Stack has been succsessfully reset. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:netsh_winsock_reset
cls
netsh winsock reset
echo.
echo.
echo.
echo.
echo Your TCP IP Stack Winsock has been succsessfully reset. Menu will continue in 10 seconds.
echo.
echo.
echo.
echo.
TIMEOUT /T 10
cls
echo Which menu would you like to go to?
ECHO.
ECHO ..............................................
ECHO PRESS 1, 2, 3, 4, 5, 6, 7, 8, or 9 to select your task, or 0 to EXIT
ECHO ..............................................
ECHO.
ECHO 1 - Release IP
ECHO 2 - Flush DNS
echo 3 - Renew IP
echo 4 - Register DNS
echo 5 - Reset Address Resolution Protocol
echo 6 - Reset NetBIOS and purge and reload the remote cache name table
echo 7 - Reset NetBIOS and send name release packets to WIN and then starts refresh
echo 8 - Reset TCP IP Stack
echo 9 - Reset TCP IP Stack Winsock
echo 0 - Shutdown and Restart
echo.
echo.
echo.
echo.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 and then press ENTER:
IF %M%==1 GOTO ipconfig_/release
IF %M%==2 GOTO ipconfig_/flushdns
IF %M%==3 GOTO ipconfig_/renew
IF %M%==4 GOTO ipconfig_/registerdns
IF %M%==5 GOTO arp_-d_*
IF %M%==6 GOTO nbtstat_-R
IF %M%==7 GOTO nbtstat_-RR
IF %M%==8 GOTO netsh_int_ip_reset
IF %M%==9 GOTO netsh_winsock_reset
IF %M%==0 GOTO Shutdown_and_restart

:EXIT
cls
echo.
echo.
echo.
echo.
echo .....................................................................................
echo .Thank you for using this Batch file. We at Hamster's PC repair HOPE this has fixed .
echo .your issues. We encourage YOU to take a look at our website to see what we offer   .
echo .We hope that you will utilize our services. Thank you again for using this file and.
echo .hope you enjoy the rest of your morning/day/afternoon/evening/night. We will be    .
echo .praying that we hear from you soon for any other services we provide.              .
echo .                                  ----------                                       .
echo .This tool will close automaticly in 60 seconds. Thank you for using it.            .
echo .....................................................................................
echo.
echo.
echo.
echo.
echo WEBSITE LINK: https://clhleroy365.wixsite.com/hamsterspcrepair
echo FACEBOOK PAGE: https://www.facebook.com/HamstersRepair
ECHO Github: TBA
echo.
echo.
echo.
echo.
echo.
TIMEOUT /T 60
exit
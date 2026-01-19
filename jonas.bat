:start:
@echo off
cls
title jonas - tool
color a
cd C:\Users\Maste\Desktop\things
type acssi.txt
cd C:\Users\Maste\Desktop
echo -
echo Welcome to Jonas Multitool.
echo Type the keyword for you designated area.
echo -----------------------------------------
echo Type 1 for Linux Connection
echo Type 2 Shutdown Computer
echo Type 3 for restart
echo Type 4 for taskmgr
echo Type 5 for recyclebin 
echo Type 6 no
echo Type 7 HTML test
echo Type 8 test1
echo Type 9 test2
echo Type 10 test3

CHOICE /C 123456 /M Choose:

IF ERRORLEVEL 6 GOTO start
IF ERRORLEVEL 5 GOTO Recyclebin
IF ERRORLEVEL 4 GOTO TaskMGR
IF ERRORLEVEL 3 GOTO Restart
IF ERRORLEVEL 2 GOTO Shutdown
IF ERRORLEVEL 1 GOTO Linux




:Recyclebin:
start explorer shell:RecycleBinFolder
GOTO start

:Linux:

cls
echo Connecting...
ssh ip-adress -l username
echo No VPN Connection or Wrong Password? Check config!
pause
cls
GOTO start
:restart:
pause

:no:
echo hi
pause
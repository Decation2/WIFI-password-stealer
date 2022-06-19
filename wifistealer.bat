@echo off
title Wifi Stealer!
echo Enter WIFI Name ^> 
set /p wifi_name=
netsh wlan show profile %wifi_name% key=clear
echo Done! Press Any key to Exit!
pause > nul
exit

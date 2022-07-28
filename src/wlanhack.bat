@echo off

netsh wlan show profile
set /p name="Type the name of the wlan here: "
netsh wlan show profile name %name% key=clear
pause
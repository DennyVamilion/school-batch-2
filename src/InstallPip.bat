@echo off

cd ..
python -m pip install -U pip
echo if an error try option2 type 2 or enter to exit
set /p i==
if %i% == 2 goto tow
exit 

:tow
python get-pip.py
echo finsih or error enter to exit
pause
exit
@echo off
title main

:main
cls
if not exist Projects md Projects
echo ----------------------------------------------
echo ----------------------------------------------
echo ---------------------------------------------- 
echo  Zer02c   ------------------------------------
echo  Version: 1.0  -------------------------------
echo ----------------------------------------------
echo ----------------------------------------------
echo ----------------------------------------------

echo Create Python Project yes/no? or go to python shell(shell) or pip install(pip) or normal cmd Commands(cmd)
set /p car=
if %car% == yes goto Create
if %car% == no exit
if %car% == shell goto chell
if %car% == pip goto pip
if %car% == cmd goto cmd

:Create
cls
cd Projects
echo. >>Projects\Readme.txt
echo name of the Project
set /p name=
md %name%
echo. >> %name%\main.py
cls
echo Project has been Created
cd ..
cd src 
start editor.bat
cd ..
cd Projects
echo do you want to play the Scripts yes/no
set /p a= 
if %a% == yes goto pl
if %a% == no pause exit

:pl
echo wich python do you use python(type 1) or python3(type 2)
set /p c=
if %c% == 1 goto python
if %c% == 2 goto python3
pause
exit

:python
cls
cd %name%
python main.py
echo again yes/no
set /p again=
if %again% == yes goto python
if %again% == no pause

:python3
cls
cd %name%
python main.py
echo again yes/no
set /p agai=
if %agai% == yes goto python3
if %agai% == no pause
goto main

:chell
cls
echo wich python chell do you want or use python(1) or python3(2)?
set /p p=
if %p% == 1 python
if %p% == 2 python3
goto main

:pip
cls
echo type the libary u want install or install | Upgrade pip(install)
set /p ins=
if %ins% == install goto insallll
pip install %ins%
echo finsih or error to continue click enter
pause 
goto main

:cmd
cd src
start cmd.bat
cd ..
goto main

:insallll
cd src
start InstallPip.bat
goto pip
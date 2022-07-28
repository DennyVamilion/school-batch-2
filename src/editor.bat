@echo off
title editor

cd ..
cd Projects
echo choose direactory
set /p d=
cd %d%
echo %d% is locked in

:line2
set /p line=
echo %line% >> main.py
goto line2
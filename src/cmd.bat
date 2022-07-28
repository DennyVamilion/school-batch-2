@echo off
title cmdEmaulator

:main
cls
echo cmdEmaulator mit verlauf(1) ohne verlauf(2)
set /p a=
if %a% == 1 goto mit
if %a% == 2 goto ohne
pause

:mit
echo take Command or go to main(main)
set /p cmdEmaulator=
%cmdEmaulator%
if %cmdEmaulator% == main goto main
pause
goto mit

:ohne
cls
echo take Command or go to main(main)
set /p CmdEmaulator=
%CmdEmaulator%
if %CmdEmaulator% == main goto main
pause
goto ohne

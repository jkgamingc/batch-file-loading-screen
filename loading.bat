@echo off
title loading...
color 0a
set load=
set/a loadnum=0

:loading
set load=%load%-
cls
echo.
echo loading...
echo ----------------------------------------------------------------------------------------------------
echo %load%
echo ----------------------------------------------------------------------------------------------------
ping localhost -n 2 >nul

set/a loadnum=%loadnum% +1
if %loadnum% == 50 goto done
goto loading

:done
echo loading is completed
pause
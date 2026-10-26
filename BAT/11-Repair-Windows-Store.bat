@echo off
setlocal
cls

echo ===============================
ECHO Repair Microsoft Store Components
ECHO ===============================
ECHO.
ECHO This resets the Store app and associated services.
ECHO.

wsreset.exe

sc config wuauserv start= auto
sc config bits start= auto

ECHO Store reset command executed.
ECHO Press any key to exit...
pause >nul

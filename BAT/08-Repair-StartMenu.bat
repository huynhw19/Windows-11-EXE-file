@echo off
setlocal
cls

echo ===============================
ECHO Repair Start Menu / Taskbar
ECHO ===============================
ECHO.
ECHO This script restarts Explorer and clears some temporary shell state.
ECHO.

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

ECHO Explorer has been restarted.
ECHO If the Start menu still fails, restart the PC.
ECHO Press any key to exit...
pause >nul

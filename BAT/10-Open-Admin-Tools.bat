@echo off
setlocal
cls

echo ===============================
ECHO Open Common Administrative Tools
ECHO ===============================
ECHO.

start "" ms-settings:
start "" control.exe
start "" compmgmt.msc
start "" services.msc
start "" eventvwr.msc
start "" devmgmt.msc

ECHO Administrative tools launched.
ECHO Press any key to exit...
pause >nul

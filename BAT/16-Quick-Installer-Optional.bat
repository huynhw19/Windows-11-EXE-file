@echo off
setlocal
cls

echo ===============================
ECHO Optional Tool Installer
ECHO ===============================
ECHO.
ECHO This script opens common download pages for optional maintenance tools.
ECHO It does not install software automatically.
ECHO.

start https://www.microsoft.com/store/apps/9N0DX20HK701
start https://www.7-zip.org/
start https://www.nirsoft.net/
start https://www.google.com/chrome/

ECHO Optional tool pages opened.
ECHO Press any key to exit...
pause >nul

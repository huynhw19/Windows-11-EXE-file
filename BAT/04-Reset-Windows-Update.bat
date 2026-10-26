@echo off
setlocal
cls

echo ===============================
ECHO Reset Windows Update Components
ECHO ===============================
ECHO.
ECHO This script resets Windows Update services and cache.
ECHO It may require Administrator privileges.
ECHO.

pause

net stop wuauserv
net stop cryptsvc
net stop bits
net stop msiserver

ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old

net start bits
net start cryptsvc
net start msiserver
net start wuauserv

ECHO Windows Update components have been reset.
ECHO You may need to reboot before checking for updates.
ECHO Press any key to exit...
pause >nul

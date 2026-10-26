@echo off
setlocal
cls

echo ===============================
ECHO Network Reset Utility
ECHO ===============================
ECHO.
ECHO This will reset TCP/IP settings, adapters, and Winsock.
ECHO.

pause

netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns

ECHO Network settings reset.
ECHO Restart your PC if network issues persist.
ECHO Press any key to exit...
pause >nul

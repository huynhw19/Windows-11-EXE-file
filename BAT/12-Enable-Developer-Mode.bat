@echo off
setlocal
cls

echo ===============================
ECHO Enable Developer Mode
ECHO ===============================
ECHO.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /v AllowDevelopmentWithoutDevLicense /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /v AllowAllTrustedApps /d 1 /f >nul 2>&1

ECHO Developer mode settings applied.
ECHO Restart recommended.
ECHO Press any key to exit...
pause >nul

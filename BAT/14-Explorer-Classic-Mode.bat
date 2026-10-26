@echo off
setlocal
cls

echo ===============================
ECHO Explorer Classic Mode Tweak
ECHO ===============================
ECHO.
ECHO This script applies simple Explorer layout preferences.
ECHO.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowStatusBar /t REG_DWORD /d 1 /f >nul 2>&1

ECHO Explorer preference changes applied.
ECHO Restart Explorer or log out to apply them.
ECHO Press any key to exit...
pause >nul

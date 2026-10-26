@echo off
setlocal
cls

echo ===============================
ECHO Disable Game Bar
ECHO ===============================
ECHO.
ECHO This disables Game Bar and related recording features.
ECHO.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1

ECHO Game Bar settings applied.
ECHO Press any key to exit...
pause >nul

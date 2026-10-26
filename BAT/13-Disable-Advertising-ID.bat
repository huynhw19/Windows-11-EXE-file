@echo off
setlocal
cls

echo ===============================
ECHO Disable Advertising ID
ECHO ===============================
ECHO.
ECHO This disables the advertising ID for the current user.
ECHO.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /v TailoredExperiencesWithDiagnosticDataEnabled /t REG_DWORD /d 0 /f >nul 2>&1

ECHO Advertising ID settings updated.
ECHO Press any key to exit...
pause >nul

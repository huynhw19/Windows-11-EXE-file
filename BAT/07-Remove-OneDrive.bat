@echo off
setlocal
cls

echo ===============================
ECHO Remove OneDrive
ECHO ===============================
ECHO.
ECHO WARNING: This script removes OneDrive.
ECHO Back up files before continuing.
ECHO.

pause

if exist "%SystemRoot%\System32\OneDriveSetup.exe" (
    "%SystemRoot%\System32\OneDriveSetup.exe" /uninstall
)

if exist "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\OneDrive.exe" (
    taskkill /f /im OneDrive.exe >nul 2>&1
    "%USERPROFILE%\AppData\Local\Microsoft\OneDrive\OneDrive.exe" /shutdown
)

ECHO OneDrive removal command has been attempted.
ECHO Press any key to exit...
pause >nul

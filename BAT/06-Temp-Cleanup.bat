@echo off
setlocal
cls

echo ===============================
ECHO Temporary Files Cleanup
ECHO ===============================
ECHO.
ECHO This script removes common temporary folders and caches.
ECHO.

pause

del /f /s /q "%TEMP%\*" >nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" >nul 2>&1

del /f /s /q "%USERPROFILE%\AppData\Local\Temp\*" >nul 2>&1
for /d %%D in ("%USERPROFILE%\AppData\Local\Temp\*") do rd /s /q "%%D" >nul 2>&1

del /f /s /q "%SystemRoot%\Temp\*" >nul 2>&1
for /d %%D in ("%SystemRoot%\Temp\*") do rd /s /q "%%D" >nul 2>&1

ECHO Temporary files cleaned.
ECHO Press any key to exit...
pause >nul

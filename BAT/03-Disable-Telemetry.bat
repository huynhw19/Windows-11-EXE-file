@echo off
setlocal
cls

echo ===============================
ECHO Windows 11 Telemetry Tuning
ECHO ===============================
ECHO.
ECHO WARNING: This script disables common telemetry-related services and features.
ECHO Use only in a controlled environment and review local policy requirements.
ECHO.

pause

rem Disable connected user experiences and telemetry-related tasks
sc config DiagTrack start= disabled >nul 2>&1
sc config dmwappushservice start= disabled >nul 2>&1
sc config WSearch start= disabled >nul 2>&1

rem Disable some services that may collect diagnostic data
sc stop DiagTrack >nul 2>&1
sc stop dmwappushservice >nul 2>&1
sc stop WSearch >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1

ECHO Telemetry-related settings applied.
ECHO Restarting the system is recommended.
ECHO Press any key to exit...
pause >nul

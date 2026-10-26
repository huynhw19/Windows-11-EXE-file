@echo off
setlocal
cls

ECHO ===============================
ECHO Windows 11 Quick Health Check
ECHO ===============================
ECHO.

ECHO [1/5] Checking if running as admin...
whoami /groups | findstr /C:"S-1-16-12288" >nul
if errorlevel 1 (
    echo WARNING: Not running as Administrator. Some checks may be limited.
) else (
    echo OK: Administrator privileges detected.
)

ECHO.
ECHO [2/5] Checking network status...
ping -n 2 8.8.8.8 >nul
if errorlevel 1 (
    echo WARNING: Internet connectivity test failed.
) else (
    echo OK: Internet connectivity test passed.
)

ECHO.
ECHO [3/5] Checking Windows services...
sc query wuauserv >nul 2>&1
if errorlevel 1 (
    echo WARNING: Windows Update service not found.
) else (
    echo OK: Windows Update service is present.
)

ECHO.
ECHO [4/5] Checking disk health...
wmic logicaldisk get status,name >nul 2>&1
if errorlevel 1 (
    echo WARNING: Disk status check could not run.
) else (
    echo OK: Disk status check completed.
)

ECHO.
ECHO [5/5] Checking installed apps...
wmic product get name >nul 2>&1
if errorlevel 1 (
    echo WARNING: Product list unavailable.
) else (
    echo OK: Installed app query succeeded.
)

ECHO.
ECHO Health check complete.
ECHO Press any key to exit...
pause >nul

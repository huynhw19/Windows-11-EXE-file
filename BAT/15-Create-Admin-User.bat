@echo off
setlocal
cls

echo ===============================
ECHO Create Temporary Admin User
ECHO ===============================
ECHO.
ECHO WARNING: This creates a local administrator account.
ECHO Use only in lab or testing scenarios.
ECHO.

set /p USERNAME=Enter username: 
set /p PASSWORD=Enter password: 

net user "%USERNAME%" "%PASSWORD%" /add
net localgroup Administrators "%USERNAME%" /add

ECHO Account created successfully.
ECHO Press any key to exit...
pause >nul

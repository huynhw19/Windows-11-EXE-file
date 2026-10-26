@echo off
setlocal
cls

ECHO ===============================
ECHO Windows 11 System Information
ECHO ===============================
ECHO.

echo Computer Name: %COMPUTERNAME%
whoami
systeminfo | findstr /B /C:"Host Name" /C:"OS Name" /C:"OS Version" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Processor(s)" /C:"Total Physical Memory"

ECHO.
ECHO Network configuration:
ipconfig | findstr /B /C:"Windows IP Configuration" /C:"IPv4 Address" /C:"Default Gateway"

ECHO.
ECHO Disk usage:
wmic logicaldisk get name,size,freespace

ECHO.
ECHO Current user profile:
echo %USERPROFILE%

ECHO.
ECHO Press any key to exit...
pause >nul

@echo off
:: Clear scheduled
shutdown -a
cls

set /p hours=Enter number of hours: 
set /p minutes=Enter number of minutes: 
set /p seconds=Enter number of seconds:
cls

:: Calculate total seconds
set /a total_seconds=(hours*3600)+(minutes*60)+seconds

echo The scheduled shutdown time is %hours% hours %minutes% minutes %seconds% seconds from now.

:: Calculate total minutes
set /a total_minutes=total_seconds/60
echo Coputer will shutdown in %total_minutes% minutes.

:: Confirm to proceed
set /p confirm=Are you sure you want to shutdown after the specified time? (Y/N):
if /i "%confirm%" neq "Y" goto end

:: Execute scheduled shutdown
shutdown -s -t %total_seconds%

:end

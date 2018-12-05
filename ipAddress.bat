@echo off

echo | set /p=Your hostname is: 

hostname

ipconfig | find /I "ipv4"

pause

@echo off
REM This batch file renames a user's roaming Google Chrome profile extension
REM so they get a new profile but favorites are preserved
echo Batch Executing
cd C:\Users\%username%\AppData\Roaming\Google\Chrome\"User Data"\Default
ren *.pb *.PBOLD
echo Batch Executed
pause
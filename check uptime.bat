@echo off
SET /p name=Enter Device Name 
SystemInfo /s %name% | find "Boot Time:"
Pause
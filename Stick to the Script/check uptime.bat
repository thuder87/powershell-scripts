@echo off
SET /p name=Enter Device Hostname or IPv4 Address 
SystemInfo /s %name% | find "Boot Time:"
Pause
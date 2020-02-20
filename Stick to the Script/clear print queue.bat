@echo off
net stop spooler
echo deleting
del %systemroot%\System32\spool\printers\* /Q
echo deleted
net start spooler

echo batch finished

Pause
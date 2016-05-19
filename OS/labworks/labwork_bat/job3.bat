@echo off
SETLOCAL=ENABLEDELAYEDEXPANSION

::Path 
if {%1}=={} goto :warning

::Does file exist
if not exist %1 (
   goto :message
)

set /p first=Add first student:
set /p second=Add second student:

rename %1 temp.txt
for /f %%a in (temp.txt) do (
set foo=%%a
if !foo!==%first% set foo=%second%
echo !foo! >> %1) 
del temp.txt
goto :exit

:warning
echo Three parameters required!
goto :exit

:message
echo File does not exist

:exit

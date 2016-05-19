@echo off
setlocal

rem TEXT FILE
if {%1}=={} goto :warning

::Does file exist
if not exist %1 (
   goto :message
)

set /P student=Add student name:

rename %1 temp.txt
type temp.txt | findstr /v %student% > %1
del temp.txt
goto :exit

:warning
echo Two parameters required!
goto :exit

:message
echo File does not exist

:exit
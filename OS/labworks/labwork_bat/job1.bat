@echo off
Setlocal
if {%1}=={} goto :warning

::Does file exist
if not exist %1 (
   goto :message
)

set /P list=Add Students:
(for %%a in (%list%) do (
   echo %%a
   echo/
)) >> %1
sort %1 /O %1
goto :exit

:warning
echo No parameter found
goto :exit

:message
echo File does not exist

:exit
pause
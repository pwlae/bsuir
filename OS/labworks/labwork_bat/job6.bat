@echo off
Setlocal

::TEXT FILE
if {%1}=={} goto :warning

::Does file exist
if not exist %1 (
   goto :message
)

set /p student=Type student:

::Code
type %1 | findstr /x %student%
%ERRORLEVEL%


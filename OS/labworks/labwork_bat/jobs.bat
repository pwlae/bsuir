@ECHO OFF
:BEGIN
CLS

:MENU
echo 1 - Create or update student list
echo 2 - Delete Student
echo 3 - Replace student 
echo 4 - Zip
echo 5 - Unzip
echo 6 - Error Level
echo 7 - EXIT

CHOICE /N /C:1234567 /M "PICK A NUMBER (1-7)"%1
IF ERRORLEVEL ==7 GOTO :END
IF ERRORLEVEL ==6 GOTO :job6
IF ERRORLEVEL ==5 GOTO :job5
IF ERRORLEVEL ==4 GOTO :job4
IF ERRORLEVEL ==3 GOTO :job3
IF ERRORLEVEL ==2 GOTO :job2
IF ERRORLEVEL ==1 goto :job1
GOTO END

:Job1
CALL job1.bat 381064.txt
GOTO :MENU

:Job2
CALL job2.bat Gevrasev 381064.txt
GOTO :MENU

:Job3
CALL job3.bat Gevrasev Redkin 381064.txt
GOTO :MENU

:Job4
CALL job4.bat 381064.txt
GOTO :MENU

:Job5
CALL job5.bat 381064.rar
GOTO :MENU

:Job6
CALL job6.bat Gevrasev 381064.rar
GOTO :MENU

:END
pause
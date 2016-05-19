@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
 
SET sourceDirPath=%~f1
SET destinationDirPath=%~dp1
SET destinationFileName=%~n1.zip

"C:\Program Files\7-zip\7z.exe" a %destinationDirPath%%destinationFileName% %sourceDirPath%


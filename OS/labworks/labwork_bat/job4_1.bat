@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
 
SET sourceDirPath=%~f1
SET destinationDirPath=%~dp1
SET destinationFileName="%~n1.zip"

SET tempFilePath=%TEMP%\FilesToZip.txt
TYPE NUL > %tempFilePath%
 
FOR /F "DELIMS=*" %%i IN ('DIR /B /S /A-D "%sourceDirPath%"') DO (
  SET filePath=%%i
  SET dirPath=%%~dpi
  SET dirPath=!dirPath:~0,-1!
  SET dirPath=!dirPath:%sourceDirPath%=!
  SET dirPath=!dirPath:%sourceDirPath%=!
  ECHO .SET DestinationDir=!dirPath! >> %tempFilePath%
  ECHO "!filePath!" >> %tempFilePath%
)
 
MAKECAB /D MaxDiskSize=0 /D CompressionType=MSZIP /D Cabinet=ON /D Compress=ON /D UniqueFiles=OFF /D DiskDirectoryTemplate=%destinationDirPath% /D CabinetNameTemplate=%destinationFileName%  /F %tempFilePath% > NUL 2>&1
 
DEL setup.inf > NUL 2>&1
DEL setup.rpt > NUL 2>&1
DEL %tempFilePath% > NUL 2>&1

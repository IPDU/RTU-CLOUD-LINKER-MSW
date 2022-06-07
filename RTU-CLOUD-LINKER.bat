:: this script creates symbolic links under \RTUCLOUD1
:: for all channels user has synced from RTU CLOUD
:: must be run as administrator because of MKLINK
:: see README

@ECHO OFF

SET "DIRNAME_FOR_LINKS=RTUCLOUD1"

RMDIR /S /Q "%HOMEDRIVE%\%DIRNAME_FOR_LINKS%"
MKDIR "%HOMEDRIVE%\%DIRNAME_FOR_LINKS%"
FOR /F "delims=" %%D IN ('DIR /ad /b  %HOMEDRIVE%%HOMEPATH%\rtucloud1\') DO (
  MKLINK /d "%HOMEDRIVE%\%DIRNAME_FOR_LINKS%\%%D" "%HOMEDRIVE%%HOMEPATH%\rtucloud1\%%D"
)

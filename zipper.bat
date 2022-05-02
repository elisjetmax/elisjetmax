@echo off  
  
Title autozip.bat  
  
REM updated 30/07/2015  
REM created by: Anonymous  
REM modified by: Yashwant Vishwakarma  
  
REM This script compresses files in a folder Note: files with the same name   
REM but with different extensions will be in the same archive.  
  
path=%path%;"C:\Program Files\WinRAR"  
  
REM ****************** Folder to compress******************  
set dir=D:\RespaldosDiarios\Mexico\BaseDeDatos\SUMEX 
REM *******************************************************  
  
REM change to directory  
cd %dir%  
  
echo Folder to compress in *.RAR format:  
echo %dir%  
  
echo Compressing files started....  
  
REM Compress files in directory individually without subdirectories.  
  
echo.  
FOR %%i IN (*.*) do (  
   C:\"Program Files"\WinRAR\winrar.exe a -afzip "%%~ni" "%%i"  
)  
goto eof  
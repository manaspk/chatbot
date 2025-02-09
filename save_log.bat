@echo off
setlocal enabledelayedexpansion

:: Define log file path
set LOGFILE="C:\Users\mh.anas\Documents\Bot File\query_log.csv"

:: If file does not exist, create with headers
if not exist %LOGFILE% (
    echo Date & Time,User Name,Employee Number,Jurisdiction > %LOGFILE%
)

:: Get input arguments
set logEntry=%1

:: Append data to CSV
echo %logEntry% >> %LOGFILE%
exit

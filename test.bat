chcp 65001
 
@echo off

title open web

setlocal enabledelayedexpansion

set /a num=1
@echo 获取【keys.txt】中的关键字

for /f "delims=" %%i in (keys.txt) do (

echo -------!num!------
echo 所搜索的关键字：【%%i】

start https://www.baidu.com/s?wd=%%i >Search.html

timeout /nobreak /t 3

set /a num+=1
)
pause
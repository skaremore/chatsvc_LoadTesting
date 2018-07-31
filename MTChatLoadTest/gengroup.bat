@echo off

@set CURLPATH=C:\Pgms\curl-7.57.0\bin

@set Size=1

@if "%~1"=="" goto DEFAULT
@set Size=%1

:DEFAULT
for /l %%i in (1, 1, %Size%) do (

%CURLPATH%\curl -v --header "Connection: keep-alive" "https://api.mockaroo.com/api/a2b5d9d0?count=1&key=de4f32b0" > "Data\groups\group_%%i.json"  

)


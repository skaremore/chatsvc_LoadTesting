@echo on

@set JMETERPATH=C:\Pgms\apache-jmeter-3.3\bin

rmdir /S /Q Report
del /Q results.log
del /Q jmeter.log

@set StartTime=%time%

%JMETERPATH%\jmeter.bat -n -e -o Report -l results.log -t MTChatLoadTest.jmx -JDataFolder=Data -JUserFile=TenantUsers.csv -JThreads=5 -JThreadLoops=2 -JLoops=15

@set StopTime=%time%

@echo.
@echo.
@echo Start: %StartTime%
@echo End:   %StopTime%


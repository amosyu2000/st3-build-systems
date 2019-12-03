@echo off

IF %2 == default (
	cmd /c start /wait cmd /k "gcc %~n1.c -o a.exe && a.exe"
	del a.exe
)

IF %2 == exe (
	cmd /c start /wait cmd /k "gcc %~n1.c -o %~n1.exe && %~n1.exe"
)
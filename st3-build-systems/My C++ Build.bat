@echo off
cmd /c start /wait cmd /k "g++ %~n1.cpp && a.exe"
del a.exe
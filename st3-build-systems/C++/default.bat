@echo off
rem C++ Build Batch File
rem
rem Repository: amosyu2000/st3-build-systems 
rem Last Updated: 2019-12-03
rem Author: Amos Yu - https://amosyu2000.github.io


@echo off
cmd /c start /wait cmd /k "g++ %~n1.cpp && a.exe"
del a.exe
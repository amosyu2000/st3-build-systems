@echo off
rem C Build Batch File
rem
rem Repository: amosyu2000/st3-build-systems 
rem Last Updated: 2019-12-12
rem Author: Amos Yu - https://amosyu2000.github.io


cmd /c start /wait cmd /k "gcc %~n1.c -o %~n1.exe && %~n1.exe"

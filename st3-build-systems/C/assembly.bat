@echo off
rem C Build Batch File
rem
rem Repository: amosyu2000/st3-build-systems 
rem Last Updated: 2019-12-12
rem Author: Amos Yu - https://amosyu2000.github.io


start cmd /k^
 "gcc -S -m32 %~nx1 && echo x86 assembly file '%~n1.s' created at '%~dp1'."
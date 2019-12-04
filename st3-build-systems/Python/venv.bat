@echo off
rem Python Build Batch File
rem
rem Repository: amosyu2000/st3-build-systems 
rem Last Updated: 2019-12-03
rem Author: Amos Yu - https://amosyu2000.github.io


rem %1 is path to file, %2 is path to root project folder

cd %2
start cmd /k ""venv/Scripts/python" %1"

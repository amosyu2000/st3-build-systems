@echo off
rem Python Build Batch File
rem
rem Repository: amosyu2000/st3-build-systems 
rem Last Updated: 2020-02-01
rem Author: Amos Yu - https://amosyu2000.github.io


rem %1 is path to file, %2 is path to root project folder
rem %~nx1 is the file name with extension


for /f %%i in ('pipenv --venv') do set venvpath=%%i

start cmd /k^ "%venvpath%\Scripts\activate && python %~nx1"
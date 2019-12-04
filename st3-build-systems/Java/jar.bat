@echo off
rem Java Build Batch File
rem
rem Repository: amosyu2000/st3-build-systems 
rem Last Updated: 2019-12-03
rem Author: Amos Yu - https://amosyu2000.github.io


:: This file is used in conjunction with My Java Build.sublime-build

:: %1 is the full path and file name that is passed to this .bat file (ex. C:\Users\Dell\sample.java)
:: %~n1 is the file name with the path and file extension removed (ex. sample)

:: %2 is a string containing either "default" or "jar"

:: Prevents the .bat file from displaying each command as it runs
@echo off

:: Creates new build directory (if it doesn't exist)
mkdir build

:: Set the current directory to the build directory
cd build 

:: Empty the directory
del * /s /q

:: Go to parent directory
cd .. 

javac -d ./build %~n1.java

cd build
jar cvf %~n1.jar *

:: Clean up all the .class files
cd build
del *.class
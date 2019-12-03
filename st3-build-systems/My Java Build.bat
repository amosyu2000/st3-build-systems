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
cd.. 

if %2 == default (

	:: "cmd /c" starts a new instance of cmd
	: "start cmd /k" opens a new command prompt window
	: "/wait" pauses the batch file until the window is closed
	: "javac" creates .class files for every relevant .java file in the project
	: "&&" executes the next command only if the previous command was successful
	: "java %~n1" runs the .class file from the build directory
	cmd /c start /wait cmd /k "javac -d ./build %~n1.java && java -cp ./build %~n1"

)

if %2 == jar (

	javac -d ./build %~n1.java

	cd build
	jar cvf %~n1.jar *

)

:: Clean up all the .class files
cd build
del *.class
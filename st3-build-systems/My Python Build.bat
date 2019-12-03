:: %~n1 is the file name with the path and file extension removed (ex. sample)
:: %2 is the modifier that is passed (i.e. 'default' or 'venv')

@echo off

if %2 == default (
	start cmd /k "python %~n1.py"
)
if %2 == venv (
	start cmd /k ""venv/Scripts/python" %~n1.py"
)
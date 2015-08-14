@echo off
color 0F
echo =======================
echo   BIND DNS Manager v1
echo =======================
echo Pleets Applications
echo.
echo Basic requeriments:
echo + Bind DNS installed
echo + Bind binaries in path
echo.
:console

set /p option=--:%CD%$ 

if "%option%" == "start dns" (
	start cmd /k named.exe -f
	echo.
	goto console
)

if "%option%" == "exit" (
	goto end
)

echo Unknown command!
goto console

:end
@echo off
:: if it has received parameters
if not "%1" == "" (

	call %SHELL_PATH%/tasks/%1.bat %2
	goto end

	if "%1" == "help" (
		goto help
	)
) else (
	echo Missing parameters!
	goto end
)

:help
	echo Not supported

:end

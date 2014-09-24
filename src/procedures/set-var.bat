@echo off
:: if it has received parameters
if not "%1" == "" (
	if "%1" == "add" (
		echo %1 %2 %3
		if "%3" == "to" (
			goto :add
		) else (
			echo Syntax error!
		)
		goto end
	)
	if "%1" == "help" (
		goto help
	)
) else (
	echo Missing parameters!
	goto end
)

:add
	set Path=%Path%;%2
	goto end

:help
	echo Environment variables Manager
	echo.
	echo function ( option )
	echo.
	echo Available values for option
	echo del-amvo			Delete the AMVO virus ( shorcut virus )

:end

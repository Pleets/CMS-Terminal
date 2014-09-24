@echo off
:: if it has received parameters
if not "%1" == "" (
	if "%1" == "del-amvo" ( 
		attrib /d /s -r -h -s *.*
		goto end
	)
	if "%1" == "help" (
		goto help
	)
) else (
	echo Missing parameters!
	goto end
)

:help
	echo Deleting virus
	echo.
	echo virus-call ( option )
	echo.
	echo Available values for option
	echo del-amvo			Delete the AMVO virus ( shorcut virus )

:end

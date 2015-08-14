::
:: CMS Terminal - controller
:: http://development.pleets.org/apps/msdos-shell
::
:: http://www.pleets.org
:: Copyright 2014, Pleets Apps
:: Free to use under the MIT license.
:: http://www.opensource.org/licenses/mit-license.php
::

@echo off
:: if it has received parameters
if not "%1" == "" (
	goto _controller
) else (
	goto _missing
)

:_controller

:: write the command in the shell history
echo %DATE% %TIME% %1 %2 %3 %4 %5 %6 %7 %8 %9 >> %SHELL_PATH%/history/shell_history.txt

:: find the command in the available commands
find "%1" < %SHELL_PATH%/src/config/available_commands.cfg >> %SHELL_PATH%/history/success_commands.txt

if not errorlevel 1 (
	goto %1
) else (
	goto default
)

	:: Aliases
	:clear
		cls
		goto break
	:halt
		shutdown /f /s
		goto break
	:pwd
		chdir
		goto break
	:cat
		type %2
		goto break
	:ls
		dir
		goto break

	:: Procedures
	:virus-call
		call %SHELL_PATH%/src/procedures/virus-call.bat %2
		goto break
	:set-var
		call %SHELL_PATH%/src/procedures/set-var.bat %2 %3 %4
		goto break
	:task
		call %SHELL_PATH%/src/procedures/task.bat %2 %3 %4
		goto break

	:: Plugins
	:zf-tool
		call %SHELL_PATH%/src/plugins/zf-tool.bat
		goto break
	:dns-tool
		call %SHELL_PATH%/src/plugins/dns-tool.bat
		goto break

	:: Help
	:help-term
		echo ALIASES:
		echo ==========
		echo clear
		echo halt
		echo pwd
		echo cat
		echo ls
		echo.
		echo PROCEDURES:
		echo =============
		echo virus-call ( option )
		echo set-var ( op1, op2, op3 )
		echo.
		echo PLUGINS:
		echo ==========
		echo zf-tool
		echo.
		goto break

	:: Default behavior
	:default
		%1 %2 %3 %4 %5 %6 %7 %8 %9
		goto end
	:break
	goto end

:_missing
	:: No parameters!
:end
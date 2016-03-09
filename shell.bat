::
:: iShell - Optimize your routines
:: http://www.pleets.org
:: Copyright 2016, Pleets Apps
:: Free to use under the MIT license.
:: http://www.opensource.org/licenses/mit-license.php
::
:: Date: 2016-03-09
::
:: @autor Darío Rivera
:: @email admin@pleets.org
::

@echo off
call src/init.bat
set SHELL_PATH=%CD%

:console
set command=
set /p command=%USERNAME%@%USERDOMAIN%$
call %SHELL_PATH%/src/controller.bat %command%
goto console

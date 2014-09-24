::
:: CMS Terminal - Optimize your routines
:: http://www.pleets.org
:: Copyright 2014, Pleets Apps
:: Free to use under the MIT license.
:: http://www.opensource.org/licenses/mit-license.php
::
:: Date: 2014-09-23
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
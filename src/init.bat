::
:: iShell - init script
:: http://development.pleets.org/apps/iShell
::
:: http://www.pleets.org
:: Copyright 2015, Pleets Apps
:: Free to use under the MIT license.
:: http://www.opensource.org/licenses/mit-license.php
::

:: write the current date in a temporal file
echo %DATE% > cache/current_date.tmp

@echo off
color 0F
echo %OS% %DATE% %TIME% >> logs/access.txt
echo ===========================
echo          iShell
echo ===========================
echo Copyright 2016, Pleets Apps
echo.

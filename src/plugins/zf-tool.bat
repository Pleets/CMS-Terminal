@echo off
color 0F
echo =================================
echo   Zend Skeleton App install v1
echo =================================
echo Pleets Applications
echo.
echo Basic php requeriments:
echo + openssl enabled
echo.
echo Basic Apache requeriments:
echo + mod_rewrite enabled
echo.
:console
set /p option=--:%CD%$ 
if "%option%" == "set php" (
	goto phpset
)
if "%option%" == "check php" (
	php --version
	goto console
)
if "%option%" == "update zend" (
	goto update
)
if "%option%" == "install zend" (
	goto install
)
if "%option%" == "exit" (
	goto end
)
echo Unknown command!
goto console

:phpset
echo Write the path of your php-version
set /p phpPAth=example: c:\wamp\bin\php\php5.4.3: 
echo Load configuration...
set Path=%Path%;%phpPath%
goto console

:update
php composer.phar self-update
goto console

:install
php composer.phar install
goto console

:end
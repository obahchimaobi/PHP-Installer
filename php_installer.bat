@echo off
setlocal EnableDelayedExpansion

:: Define PHP version and target directory
set "PHP_VERSION=8.4.2"
set "PHP_DIR=C:\php"

:: Check if PHP is already installed
if exist "%PHP_DIR%\php.exe" (
    echo PHP is already installed at %PHP_DIR%.
    goto end
)

:: Download PHP zip package (adjust link based on your PHP version and architecture)
set "PHP_ZIP_URL=https://windows.php.net/downloads/releases/php-8.4.2-nts-Win32-vs17-x64.zip"
set "PHP_ZIP_FILE=%TEMP%\php.zip"

echo Downloading PHP...
powershell -Command "& {Invoke-WebRequest -Uri '%PHP_ZIP_URL%' -OutFile '%PHP_ZIP_FILE%'}"

:: Extract PHP zip package
echo Extracting PHP...
powershell -Command "& {Expand-Archive -Path '%PHP_ZIP_FILE%' -DestinationPath '%PHP_DIR%' -Force}"

:: Clean up downloaded file
del "%PHP_ZIP_FILE%"

:: Add PHP to PATH
echo Adding PHP to system PATH...
setx PATH "%PHP_DIR%;%PATH%" /M

:: Test PHP installation
echo Verifying PHP installation...
"%PHP_DIR%\php.exe" -v

if %errorlevel%==0 (
    echo PHP installed successfully!
) else (
    echo Error installing PHP.
)

:end
pause

@echo off

IF NOT [%VCPKG_ROOT%] == [] GOTO SET_FROM_ENV
IF NOT [%1] == [] GOTO SET_FROM_ARG
GOTO NO_DIR_FOUND

:SET_FROM_ENV
set VCPKG_ROOT_DIR=%VCPKG_ROOT%
GOTO INSTALL_PORTS

:SET_FROM_ARG
set VCPKG_ROOT_DIR=%1
GOTO INSTALL_PORTS

:NO_DIR_FOUND
echo "VCPKG_ROOT directory was not found!"
echo "Please define the VCPKG_ROOT environment variable or pass the directory as an argument to this batch file!"
GOTO END_LABEL


:INSTALL_PORTS
echo "Installing..."
xcopy "./ports" /sqy "%VCPKG_ROOT_DIR%/ports"
echo "Installed all ports to directory: %VCPKG_ROOT_DIR%/ports"

:END_LABEL
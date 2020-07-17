@echo off
set parentFolder=%cd%
set /p projectName=Enter the name of the 'GO' project:
mkdir %projectName%_project
cd %projectName%_project
mkdir src && mkdir bin && mkdir pkg
cd src
mkdir main
cd main
type nul>%projectName%.go

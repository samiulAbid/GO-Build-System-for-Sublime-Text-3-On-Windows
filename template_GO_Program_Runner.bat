@echo off
set goProgramFolder=%cd%
cd .. && cd ..
set parentFolder=%cd%
set GOPATH="%parentFolder%"
set GOBIN="%parentFolder%\bin"
cd %goProgramFolder%
rem "echo %0" or "echo %nx0"(of course,
rem without quotes), will give the
rem .bat filename which contains one
rem of these commands in itself;
rem whereas, "echo %~n0" (without quotes)
rem will give only the file's basename
rem (without extension).
rem go build %~n0.go
rem %~n0.exe
go run %~n0.go
echo.
pause

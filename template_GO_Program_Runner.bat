@echo off
set goProgramFolder=%cd%
cd .. && cd ..
set parentFolder=%cd%
set GOPATH="%parentFolder%"
set GOBIN="%parentFolder%\bin"
cd %goProgramFolder%
:: "echo %0" or "echo %nx0"(of course,
:: without quotes), will give the
:: .bat filename which contains one
:: of these commands in itself;
:: whereas, "echo %~n0" (without quotes)
:: will give only the file's basename
:: (without extension).
:: go build %~n0.go
:: %~n0.exe
go run %~n0.go

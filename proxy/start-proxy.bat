@echo off
SET mypath=%~dp0
%mypath:~0,-1%/cntlm.exe -c %mypath:~0,-1%\cntlm.ini
echo Proxy listening on localhost:3128 as daemon
@echo off
SET mypath=%~dp0
setx PATH %PATH%;%mypath:~0,-1%
start cmd.exe /C %mypath:~0,-1%/proxy/start-proxy.bat
start cmd.exe /C npm config set proxy http://localhost:3128
start cmd.exe /C npm config set https-proxy https://localhost:3128
start cmd.exe /C npm config set registry "http://registry.npmjs.org/"
echo "Proxy listening in background on localhost:3128. You can exit program"
npm install -g grunt-cli
pause
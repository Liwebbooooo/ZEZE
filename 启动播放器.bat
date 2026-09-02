@echo off
cd /d "%~dp0"
set PY=C:\Users\Webb\.workbuddy\binaries\python\versions\3.13.12\python.exe
if not exist "%PY%" set PY=python
start "" /b "%PY%" -m http.server 8123 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8123/"
echo.
echo 播放器已启动。保持本窗口开启；关闭本窗口即停止服务。
echo 地址： http://127.0.0.1:8123/index.html
echo.
pause >nul

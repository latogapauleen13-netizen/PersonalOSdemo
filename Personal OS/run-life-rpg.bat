@echo off
cd /d "%~dp0"
python --version >nul 2>&1
if errorlevel 1 (
	start "" "%~dp0index.html"
	exit /b 0
)
start "LIFE RPG server" /min cmd /c "python -m http.server 8000"
start "" "http://localhost:8000/index.html"

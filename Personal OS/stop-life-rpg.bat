@echo off
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":8000"') do taskkill /f /pid %%a >nul 2>&1

@echo off
REM Check pip version
pip --version

REM Create a virtual environment
python -m venv deepseek_env
call deepseek_env\Scripts\activate

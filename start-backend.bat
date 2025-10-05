@echo off
echo Starting Impactor-2025 Backend Server...
cd backend
python -m venv venv
call venv\Scripts\activate
pip install -r requirements.txt
set NASA_API_KEY=DEMO_KEY
python app.py
pause


@echo off
echo ================================================
echo       LLM Excel/CSV Processor Setup
echo ================================================
echo.

echo Installing Python dependencies...
pip install -r requirements.txt

echo.
echo ================================================
echo Setup complete!
echo.
echo To start the application:
echo   1. Make sure Ollama is installed and running
echo   2. Run: streamlit run app.py
echo   3. Open http://localhost:8501 in your browser
echo.
echo First time setup with Ollama:
echo   1. Download Ollama from: https://ollama.ai/download/windows
echo   2. Install and start Ollama
echo   3. Open a new terminal and run: ollama pull llama2
echo   4. Run: ollama serve
echo ================================================
pause

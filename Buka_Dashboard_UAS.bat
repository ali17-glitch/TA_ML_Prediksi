@echo off
title Buka Dashboard Prediksi Kemiskinan Smart City - UAS Alie Fadilah
color 0b

:: Secara otomatis pindah ke direktori tempat file .bat ini berada (Downloads)
cd /d "%~dp0"

echo =======================================================================
echo   🏙️  MEMBUKA DASHBOARD SMART CITY KEMISKINAN (UAS ALIE FADILAH)
echo =======================================================================
echo.
echo [Langkah 1/3] Memeriksa kesiapan sistem Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python belum terinstal di PC ini!
    echo Silakan unduh Python dari https://www.python.org/downloads/ terlebih dahulu.
    echo.
    pause
    exit
)

echo [Langkah 2/3] Memeriksa dan menginstal library pendukung di latar belakang...
echo (Mengunduh Streamlit, Pandas, Scikit-learn, dll... Harap tunggu sebentar)
python -m pip install --upgrade pip >nul 2>&1
pip install streamlit pandas openpyxl matplotlib seaborn scikit-learn pillow >nul 2>&1

echo [Langkah 3/3] Meluncurkan Dashboard Premium di Browser Anda...
echo.
echo =======================================================================
echo   🎉 SELESAI! Dashboard sedang diluncurkan di http://localhost:8501
echo =======================================================================
echo.
streamlit run UAS_ML_ALIEPFADILAH_2307031.py

pause

@echo off
set list=300 350 400 400.21 410 450 500 550 600 650 700 750 800 999
choice /m "/!\ Warning /!\ This version of Chart2Mid is less accurate and more flonky than Leff's algo, run with caution"
if "%ERRORLEVEL%"=="2" goto :eof
for %%i in (%list%) do (  
  echo Converting %%i
  chart2mid2 %%i.chart %%i.mid
)
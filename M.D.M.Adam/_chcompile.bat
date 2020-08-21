@echo off

set list=300 350 400 400.21 410 450 500 550 600 650 700 750 800 999

for %%i in (%list%) do (  
  echo Creating %%i
  if not exist %%i mkdir %%i
  echo 	copying gfx
  copy *.jpg %%i /y > NUL
  echo 	copying audio
  copy %%i.wav %%i\song.wav > NUL
  echo 	copying notes
  copy %%i.chart %%i\notes.chart > NUL
  echo 	copying ini
  copy %%i.ini %%i\song.ini > NUL
  echo 	packing
  "C:\program files (x86)\7-zip\7z" a -y -mx9 -mmt24 _pack.zip %%i -mf=BCJ1536 > NUL
)
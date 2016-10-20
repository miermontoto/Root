@echo off
title B: Timer (Stable)
color 0f
echo (c) 2016 Gijon. All rights reserved.
echo B: Loaded Timer (Stable)
echo B: 
echo B: -----------------------------------

ping localhost>nul
cls
veecho (c) 2016 Gijon. All rights reserved.
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Updating timezone...
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
:reload
ping localhost /n 1 >nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: %time% ; %date% .
echo B: 
echo B: -----------------------------------
goto reload

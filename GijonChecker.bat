@echo off
title B: IPChecker b19
color 0f
echo (c) 2016 Gijon. All rights reserved.
echo B: Loaded IPChecker b19
echo B:
echo B: -----------------------------------

ping localhost>nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Hello there, %username%.
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Please input URL/IP:
echo B:
echo B: -----------------------------------
set /p ip=IN:
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Set target to "%ip%".
echo B:
echo B: -----------------------------------
ping localhost>nul
cls
echo (c) 2016 Gijon. All rights reserved.
echo B: Pinging to "%ip%" 16 times.
echo B:
echo B: -----------------------------------
ping localhost>nul
ping %ip% -n 10
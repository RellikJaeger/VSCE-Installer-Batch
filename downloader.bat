@echo off

:init
title VSCE 2019 Downloader v0.1 (Minimal) by Rellik Jaeger.
color 0a
mode con cols=70 lines=30
cls
echo [Visual Studio 2019 bootstrapper v16.5.30011.22]
echo.
echo Visual Studio Community Edition downloader for offline setup wizard
echo.
echo Select your custom installation:
echo.
echo 1) .NET web development
echo 2) .NET desktop development
echo 3) C++ desktop development
echo 4) Office development
echo.
echo PS: You can select multiple items like this, e.g., "2, 4, 1", etc.
echo.
set custom_installation=
set /p custom_installation=:

if not "%custom_installation%"=="" set custom_installation=%custom_installation:~0,10%

if "%custom_installation%"=="1" goto stage2

if "%custom_installation%"=="1, 2" goto stage2
if "%custom_installation%"=="1, 2, 3" goto stage2
if "%custom_installation%"=="1, 2, 4" goto stage2
if "%custom_installation%"=="1, 2, 3, 4" goto stage2
if "%custom_installation%"=="1, 2, 4, 3" goto stage2

if "%custom_installation%"=="1, 3" goto stage2
if "%custom_installation%"=="1, 3, 2" goto stage2
if "%custom_installation%"=="1, 3, 4" goto stage2
if "%custom_installation%"=="1, 3, 2, 4" goto stage2
if "%custom_installation%"=="1, 3, 4, 2" goto stage2

if "%custom_installation%"=="1, 4" goto stage2
if "%custom_installation%"=="1, 4, 2" goto stage2
if "%custom_installation%"=="1, 4, 3" goto stage2
if "%custom_installation%"=="1, 4, 2, 3" goto stage2
if "%custom_installation%"=="1, 4, 3, 2" goto stage2



if "%custom_installation%"=="2" goto stage2

if "%custom_installation%"=="2, 1" goto stage2
if "%custom_installation%"=="2, 1, 3" goto stage2
if "%custom_installation%"=="2, 1, 4" goto stage2
if "%custom_installation%"=="2, 1, 3, 4" goto stage2
if "%custom_installation%"=="2, 1, 4, 3" goto stage2

if "%custom_installation%"=="2, 3" goto stage2
if "%custom_installation%"=="2, 3, 1" goto stage2
if "%custom_installation%"=="2, 3, 4" goto stage2
if "%custom_installation%"=="2, 3, 1, 4" goto stage2
if "%custom_installation%"=="2, 3, 4, 1" goto stage2

if "%custom_installation%"=="2, 4" goto stage2
if "%custom_installation%"=="2, 4, 1" goto stage2
if "%custom_installation%"=="2, 4, 3" goto stage2
if "%custom_installation%"=="2, 4, 1, 3" goto stage2
if "%custom_installation%"=="2, 4, 3, 1" goto stage2



if "%custom_installation%"=="3" goto stage2

if "%custom_installation%"=="3, 1" goto stage2
if "%custom_installation%"=="3, 1, 2" goto stage2
if "%custom_installation%"=="3, 1, 4" goto stage2
if "%custom_installation%"=="3, 1, 2, 4" goto stage2
if "%custom_installation%"=="3, 1, 4, 2" goto stage2

if "%custom_installation%"=="3, 2" goto stage2
if "%custom_installation%"=="3, 2, 1" goto stage2
if "%custom_installation%"=="3, 2, 4" goto stage2
if "%custom_installation%"=="3, 2, 1, 4" goto stage2
if "%custom_installation%"=="3, 2, 4, 1" goto stage2

if "%custom_installation%"=="3, 4" goto stage2
if "%custom_installation%"=="3, 4, 1" goto stage2
if "%custom_installation%"=="3, 4, 2" goto stage2
if "%custom_installation%"=="3, 4, 1, 2" goto stage2
if "%custom_installation%"=="3, 4, 2, 1" goto stage2



if "%custom_installation%"=="4" goto stage2

if "%custom_installation%"=="4, 2" goto stage2
if "%custom_installation%"=="4, 2, 3" goto stage2
if "%custom_installation%"=="4, 2, 1" goto stage2
if "%custom_installation%"=="4, 2, 3, 1" goto stage2
if "%custom_installation%"=="4, 2, 1, 3" goto stage2

if "%custom_installation%"=="4, 3" goto stage2
if "%custom_installation%"=="4, 3, 2" goto stage2
if "%custom_installation%"=="4, 3, 1" goto stage2
if "%custom_installation%"=="4, 3, 2, 1" goto stage2
if "%custom_installation%"=="4, 3, 1, 2" goto stage2

if "%custom_installation%"=="4, 1" goto stage2
if "%custom_installation%"=="4, 1, 2" goto stage2
if "%custom_installation%"=="4, 1, 3" goto stage2
if "%custom_installation%"=="4, 1, 2, 3" goto stage2
if "%custom_installation%"=="4, 1, 3, 2" goto stage2

echo.
echo [ Error: Input not valid, try again! ]
echo.
pause
goto init

:stage2
cls
echo [Visual Studio 2019 bootstrapper v16.5.30011.22]
echo.
echo Visual Studio Community Edition downloader for offline setup wizard
echo.
echo Select language option:
echo.
echo  1) en-US - English
echo  2) ja-JP - Japanese
echo  3) cs-CZ - Czech
echo  4) de-DE - German
echo  5) es-ES - Spanish
echo  6) fr-FR - French
echo  7) it-IT - Italian
echo  8) ko-KR - Korean
echo  9) pl-PL - Polish
echo 10) pt-BR - Portuguese - Brazil
echo 11) ru-RU - Russian
echo 12) tr-TR - Turkish
echo 13) zh-CN - Chinese - Simplified
echo 14) zh-TW - Chinese - Traditional
echo.
echo [!] You can not select multiple items!
echo [!] Default language is en-US - English.
echo [!] Type "n" to go back.
echo.
set language_option=
set /p language_option=:
if not "%language_option%"=="" set language_option=%language_option:~0,2%
if "%language_option%"=="" set language_option=1 & goto confirm
if "%language_option%"=="n" goto init
if "%language_option%"=="1" goto confirm
if "%language_option%"=="2" goto confirm
if "%language_option%"=="3" goto confirm
if "%language_option%"=="4" goto confirm
if "%language_option%"=="5" goto confirm
if "%language_option%"=="6" goto confirm
if "%language_option%"=="7" goto confirm
if "%language_option%"=="8" goto confirm
if "%language_option%"=="9" goto confirm
if "%language_option%"=="10" goto confirm
if "%language_option%"=="11" goto confirm
if "%language_option%"=="12" goto confirm
if "%language_option%"=="13" goto confirm
if "%language_option%"=="14" goto confirm
echo.
echo [ Error: Input not valid, try again! ]
echo.
pause
goto stage2

:confirm
echo.
echo You selected %custom_installation% with %language_option%.
echo.
pause

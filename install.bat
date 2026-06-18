@echo off
setlocal

set "C=resource\finalizedCommon\mithril\system\font\st"
set "W=resource\finalizedWin64\mithril\system\font\st"

if not exist "%C%\efigs\font_normal_icon.csh" (
    echo.
    echo Couldn't find the game files.
    echo Drop install.bat into your World of Final Fantasy folder
    echo [the one that has WOFF.exe] and run it from there.
    echo.
    pause
    exit /b 1
)

if not exist "_padprompt_backup" mkdir "_padprompt_backup"

call :do efigs font_normal
call :do jp font_menu
call :do ch font_menu
call :do ko font_menu

echo.
echo Done! Enjoy your controller binds!!!
echo Run uninstall.bat any time to put the keyboard prompts back.
echo.
pause
exit /b 0

:do
set "loc=%~1"
set "f=%~2"
if not exist "%C%\%loc%\%f%_icon.csh" exit /b
if not exist "_padprompt_backup\common\%loc%" mkdir "_padprompt_backup\common\%loc%"
if not exist "_padprompt_backup\win64\%loc%" mkdir "_padprompt_backup\win64\%loc%"

if not exist "_padprompt_backup\common\%loc%\%f%_k_icon.csh" (
    copy /y "%C%\%loc%\%f%_k_icon.csh" "_padprompt_backup\common\%loc%\" >nul
    copy /y "%C%\%loc%\%f%_k_icon_table.csh" "_padprompt_backup\common\%loc%\" >nul
    copy /y "%W%\%loc%\%f%_k_icon_0.tex" "_padprompt_backup\win64\%loc%\" >nul
    copy /y "%W%\%loc%\%f%_k_icon_1.tex" "_padprompt_backup\win64\%loc%\" >nul
)

copy /y "%C%\%loc%\%f%_icon.csh" "%C%\%loc%\%f%_k_icon.csh" >nul
copy /y "%C%\%loc%\%f%_icon_table.csh" "%C%\%loc%\%f%_k_icon_table.csh" >nul
copy /y "%W%\%loc%\%f%_icon_0.tex" "%W%\%loc%\%f%_k_icon_0.tex" >nul
copy /y "%W%\%loc%\%f%_icon_1.tex" "%W%\%loc%\%f%_k_icon_1.tex" >nul
echo   patched %loc%
exit /b

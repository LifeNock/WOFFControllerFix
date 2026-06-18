@echo off
setlocal

set "C=resource\finalizedCommon\mithril\system\font\st"
set "W=resource\finalizedWin64\mithril\system\font\st"

if not exist "_padprompt_backup" (
    echo.
    echo No backup folder here. If you still want the defaults back,
    echo right click the game in Steam, Properties, Installed Files,
    echo Verify integrity of game files.
    echo.
    pause
    exit /b 1
)

for %%L in (efigs jp ch ko) do (
    if exist "_padprompt_backup\common\%%L" (
        copy /y "_padprompt_backup\common\%%L\*" "%C%\%%L\" >nul
        copy /y "_padprompt_backup\win64\%%L\*" "%W%\%%L\" >nul
        echo   restored %%L
    )
)

echo.
echo Keyboard prompts restored.
echo.
pause

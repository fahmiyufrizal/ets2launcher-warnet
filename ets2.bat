@echo off

:launch
findstr /m "mod.mode=on" config.ini
if %errorlevel%==0 (
    goto rdon ) else ( goto checkoff )

:checkoff
findstr /m "mod.mode=off" config.ini
if %errorlevel%==0 (
    goto rdoff ) else ( goto missconfig )

:rdon
RD /S /Q "%userprofile%\Documents\Euro Truck Simulator 2"
RD /S /Q "%public%\Documents\Steam"
mklink /J "%userprofile%\Documents\Euro Truck Simulator 2" "%~dp0\mod\Euro Truck Simulator 2"
goto codex

:rdoff
goto codex

:codex
findstr /m "savegame.codex=on" config.ini
if %errorlevel%==0 (
    goto codexsave ) else ( goto checkcodex )

:checkcodex
findstr /m "savegame.codex=off" config.ini
if %errorlevel%==0 (
    goto ori ) else ( goto missconfig )

:codexsave
mklink /J "%public%\Documents\Steam" "%~dp0\mod\Steam"
goto ets2prog

:ori
goto ets2prog

:ets2prog
findstr /m "ets2.prog=x64" config.ini
if %errorlevel%==0 (
    goto x64 ) else ( goto check86 )

:check86
findstr /m "ets2.prog=x86" config.ini
if %errorlevel%==0 (
    goto x86 ) else ( goto missconfig )

:x64
start ETS2\bin\win_x64\eurotrucks2.exe
start _fahmiyufrizal\cleanup.exe
start _fahmiyufrizal\aman.vbs
exit

:x86
start ETS2\bin\win_x86\eurotrucks2.exe
start _fahmiyufrizal\cleanup.exe
start _fahmiyufrizal\aman.vbs
exit

:missconfig
cd _fahmiyufrizal
start missconfig.vbs
exit

:missing
cd _fahmiyufrizal
start missing.vbs
exit

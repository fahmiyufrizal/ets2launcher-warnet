REM ------------ Script ETS 2 Launch + Symlink folder user (with mods) + Trigger Steam for onlinefix.me crack
REM ------------ by fahmiyufrizal@2022
REM ------------
REM ------------ Script ini bebas dikembangkan dengan tidak menghilangkan credits ini
REM ------------ Jadilah santun dan tamvan 
@echo off

:Trigger_buka_steam_untuk_crack_onlinefix
REM Petunjuk penggunaan : ubah "pathdisini" menjadi path dimana direktori steam berada
REM Misal : start "" "C:\Program Files (x86)\Steam\steam.exe"
REM Hilangkan tulisan "REM" setelah garis di bawah ini
REM --------------------------------------------------
REM start "" "pathdisini\steam.exe"

:Symlink_folder_profile_dan_mod
REM ------------ Hilangkan REM untuk perintah menghapus dulu folder ETS2 di dokumen (semua crack/ori)
REM RD /S /Q "%userprofile%\Documents\Euro Truck Simulator 2"
REM ------------ Hilangkan REM untuk perintah menghapus dulu folder ETS2 di dokumen (semua crack/ori)
mklink /J "%userprofile%\Documents\Euro Truck Simulator 2" "%~dp0\mod\Euro Truck Simulator 2"

:Launch ETS 2
start "" ETS2\bin\win_x64\eurotrucks2.exe
REM start ETS2\bin\win_x86\eurotrucks2.exe
REM ------------ tukar perintah REM bila menggunakan ETS2 versi 32-bit/x86

REM ------------ Script ETS 2 Launch + Symlink folder user (with mods) + Trigger Steam for onlinefix.me crack
REM ------------ by fahmiyufrizal@2022
REM ------------
REM ------------ Script ini bebas dikembangkan dengan tidak menghilangkan credits ini
REM ------------ Jadilah santun dan tamvan 
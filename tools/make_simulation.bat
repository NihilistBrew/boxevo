@echo off
SETLOCAL EnableDelayedExpansion

for %%I in (.) do set base=%%~nxI
if not "!base!"=="tools" (cd tools)

cd ..
rd /s /q simulation
md simulation\bundle

pyinstaller src\simulate.py --distpath simulation --onefile
pyinstaller src\startworld.py --distpath simulation\bundle --onefile
pyinstaller src\graph.py --distpath simulation\bundle --onefile

copy src\config.py simulation\bundle
xcopy resources simulation\bundle /i

cd tools
::@echo off
cd ..\pdpy11\
python -m pdpy11 ..\desolate\desola.mac --lst
cd ..\desolate\
rem if not exist "desola.mac.bin" goto fail
if not exist "desola.bin" goto fail
rem del desola.bin
rem ren desola.asm.bin desola.bin
rem del desola.lst
rem ren desola.asm.lst desola.lst
copy /y /b desola.bin ..\bk2010\files\desola.bin
exit
:fail
echo desola.asm did not compile!

::pushd "%~dp0"
::set BATCH_PATH=%CD%
::echo Echoing: %CD%
::popd
@echo off

:: Normalize this batch script's path
set BATCH_PATH=%~dp0
set BATCH_PATH=%BATCH_PATH:~0,-1%
echo Echoing: %BATCH_PATH%

rem vasm.exe -m68000 -maxerrors=0 -Fsrec -exec -o %~dp1%~n1.h68 -L %~dp1%~n1.lis %1
rem vasm.exe -m68020 -Fsrec -I %BATCH_PATH%\..\Internal\Asm -I %BATCH_PATH%\..\Interfaces\AIncludes -exec -o %~dp1%~n1.h68 -L %~dp1%~n1.lis %1
%BATCH_PATH%\vasmm68k_madmac.exe -maxerrors=0 -m68020 -Fsrec -I %BATCH_PATH%\..\Internal\Asm -I %BATCH_PATH%\..\Interfaces\AIncludes -exec -o %~dp1%~n1.h68 -L %~dp1%~n1.lis %1
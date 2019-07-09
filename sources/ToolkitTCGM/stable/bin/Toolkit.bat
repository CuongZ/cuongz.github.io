color 3f
title Toolkit for Tencent Gaming Buddy - Version 3.5 AutoIT
mode 107,27
cls
@echo off
echo Run-Test Plugin
echo Build date: 30/6/2019
echo Version: 2.0 
echo Source: htps://github.com/CuongZ/Source-TookitTCGM
echo ---------------------------------   
if exist "bin/adb.exe" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin/AdbWinApi.dll" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin/nircmd.exe" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin/nircmdc.exe" (
 echo FOUND
 echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin\vi\scripts\selector.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin\vi\scripts\mksctbat.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin\vi\scripts\pkginstaller.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin\en\scripts\selector.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin\en\scripts\mksctbat.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
if exist "bin\en\scripts\pkginstaller.bat" (
echo FOUND
echo ---------------------------------
) else (
echo NOT FOUND. Cannot run Toolkit if some file is missing. Please check or re-install the Toolkit.
echo ---------------------------------
pause
exit
)
@echo off
echo Killing current ADB server...
adb kill-server
@echo off
echo Force closing ADB interface...
taskkill /F /IM adb.exe
echo Force closing NirCMD
taskkill /F /IM nircmd.exe
taskkill /F /IM mksct.exe
taskkill /F /IM nircmdc.exe
cls
@echo off
echo Select language / Chon ngon ngu
echo[
echo -------------------------------
echo[
echo (1): English
echo (2): Vietnamese ( Tieng Viet )
echo (3): Exit / Thoat
echo[
echo -------------------------------
CHOICE /N /C:12 /M "Enter your select here / Nhap lua chon cua ban tai day:"%1
IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO VI
IF ERRORLEVEL ==1 GOTO EN
GOTO exit
:VI
cls
@echo off
echo --------------------------------------------------------------------------------------
echo Toolkit cho Tencent Gaming Buddy
echo Ngay build: 2/7/2019  9:12PM
echo Ban co the tim thay ma nguon tai: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo --------------------------------------------------------------------------------------
echo (c) CuongZ. Phien ban 3.5 AutoIT
echo Github : https://github.com/CuongZ
echo Facebook : https://facebook.com/dtcuong0109 
echo An phim bat ky de tiep tuc!
echo -------------------------------------------------------------------------------
pause
cd bin\vi\scripts
call selector.bat
:EN
cls
@echo off
echo -------------------------------------------------------------------------------
echo Toolkit for Tencent Gaming Buddy
echo Build date: 7/7/2019
echo Source: https://github.com/CuongZ/ToolkitTCGM_OfficialBuild
echo -------------------------------------------------------------------------------
echo (c) Made by CuongZ. Version 3.5 AutoIT
echo Github : https://github.com/CuongZ
echo Facebook : https://facebook.com/dtcuong0109 
echo Press any key to start!
echo -------------------------------------------------------------------------------
pause
cd bin\en\scripts
call selector.bat
:EXIT
@echo off
echo Killing current ADB server...
adb kill-server
@echo off
echo Force closing ADB interface...
taskkill /F /IM adb.exe
echo Force closing NirCMD
taskkill /F /IM nircmd.exe
taskkill /F /IM mksct.exe
taskkill /F /IM nircmdc.exe
exit
@echo off
echo Welcome to Junk File Cleaner By Rezy Dev!
timeout 5 >nul

if "%OS%"=="Windows_NT" (
    echo .Using a Windows NT based system
    echo ..%COMPUTERNAME%
) else (
    echo Error: Invalid Operating System
    goto END
)

echo Deleting Temporary Internet Files...
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*.*"
del /q /f /s "%TEMP%\*.*"
echo Temporary Internet Files deleted!

echo Deleting Prefetch folder data...
del /q /f /s "%systemroot%\Prefetch\*.*"
echo Prefetch folder data deleted!

echo Deleting Temp folder data...
del /q /f /s "%systemroot%\Temp\*.*"
echo Temp folder data deleted!

echo Deleting Cookies...
del /q /f /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Cookies\*.*"
del /q /f /s "%USERPROFILE%\AppData\LocalLow\Microsoft\Internet Explorer\DOMStore\*.*"
echo Cookies deleted!

echo Deleting History...
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\History\*.*"
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\Recovery\Active\*.*"
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\Recovery\Last Active\*.*"
echo History deleted!

echo Deleting Windows Internet Explorer Dat Files...
del /q /f /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PrivacIE\*.*"
del /q /f /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\IECompatCache\*.*"
del /q /f /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\IETldCache\*.*"
echo Windows Internet Explorer Dat Files deleted!

echo Deleting Windows Error Reporting Files...
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\ReportArchive\*.*"
echo Windows Error Reporting Files deleted!

echo Deleting Flash Player Temp Files...
del /q /f /s "%USERPROFILE%\AppData\Roaming\Macromedia\Flash Player\*.*"
echo Flash Player Temp Files deleted!

echo Deleting Remote Desktop Cache...
del /q /f /s "%USERPROFILE%\AppData\Local\Microsoft\Terminal Server Client\Cache\*.*"
echo Remote Desktop Cache deleted!

echo Deleting Profile Temp Files...
del /q /f /s "%USERPROFILE%\AppData\Local\Temp\*.*"
echo Profile Temp Files deleted!

echo Deleting FireFox Cache...
pushd "%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles\*.default\"
del /q /f /s "Cache\*.*"
popd
echo FireFox Cache deleted!

echo Deleting User Profile Adobe Temp Files...
del /q /f /s "%USERPROFILE%\AppData\LocalLow\Adobe\Acrobat\9.0\Search\*.*"
del /q /f /s "%USERPROFILE%\AppData\LocalLow\Adobe\Common\Media Cache Files\*.*"
del /q /f /s "%USERPROFILE%\AppData\LocalLow\Adobe\Common\Media Cache\*.*

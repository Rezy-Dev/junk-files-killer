@echo off

if %os%==Windows_NT goto WINNT

goto NOCON

 

:WINNT

echo .Using a Windows NT based system

echo ..%computername%

 

echo Deleting Temporary Internet Files

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*”

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*.*”

del /q /f /s “%temp%\*.*”

echo deleted!

 

echo Deleting Prefetch folder data

del /q /f /s “%systemroot%\Prefetch\*.*”

echo deleted!

 

echo Deleting Temp folder data

del /q /f /s “%systemroot%\Temp\*.*”

echo deleted!

 

echo Deleting Cookies

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Cookies\*.*”

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Microsoft\Internet Explorer\DOMStore\*.*”

echo deleted!

 

echo Deleting History

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\History\*.*”

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\Recovery\Active\*.*”

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Internet Explorer\Recovery\Last Active\*.*”

echo deleted!

 

echo Deleting Windows Internet Explorer Dat Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PrivacIE\*.*”

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\IECompatCache\*.*”

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\IETldCache\*.*”

echo deleted!

 

echo Deleting Windows Error Reporting Files

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\ReportArchive\*.*”

echo deleted!

 

echo Deleting Flash Player Temp Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Macromedia\Flash Player\*.*”

echo deleted!

 

echo Deleting Remote Desktop Cache

del /q /f /s “%USERPROFILE%\AppData\Local\Microsoft\Terminal Server Client\Cache\*.*”

echo deleted!

 

echo Deleting Profile Temp Files

del /q /f /s “%USERPROFILE%\AppData\Local\Temp\*.*”

echo deleted!

 

echo Deleting FireFox Cache

 

pushd “%USERPROFILE%\AppData\Local\Mozilla\Firefox\Profiles\*.default\”

del /q /f /s “Cache\*.*”

popd

 

echo deleted!

 

echo Deleting User Profile Adobe Temp Files

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Adobe\Acrobat\9.0\Search\*.*”

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Adobe\Common\Media Cache Files\*.*”

del /q /f /s “%USERPROFILE%\AppData\LocalLow\Adobe\Common\Media Cache\*.*”

echo deleted!

 

echo Deleting User Office Recent Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Office\Recent\*.*”

echo deleted!

 

echo Deleting User Office TMP Files

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Office\*.tmp”

echo deleted!

 

echo Emptying Recycle Bin

del %systemdrive%\$Recycle.bin\*.* /f /s /q

echo emptied!

 

echo Deleting Recent Items

del /q /f /s “%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\*.tmp”

echo deleted!

 

goto END

 

:NOCON

echo Error…Invalid Operating System…

echo Error…No actions were made…

goto END

 

:END
@echo off

rem Display welcome message
echo Hello, Welcome to Junk File Cleaner by Rezy#8811

rem Wait 5 seconds with countdown
for /l %%i in (1,1,5) do (
  echo.
  echo Deleting junk files in %%i seconds...
  timeout 1 >nul
)

rem Ask permission to delete junk files
echo.
echo Are you sure you want to delete all junk files? (Y/N)
set /p answer="Your answer: "

rem If user presses Y, delete junk files
if "%answer%"=="Y" (
  echo Deleting junk files...
  del /f /q /s "%TEMP%\*"
  del /f /q /s "%USERPROFILE%\AppData\Local\Temp\*"
  del /f /q /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*"
  del /f /q /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache\*"
  del /f /q /s "%systemroot%\Prefetch\*"
  del /f /q /s "%systemroot%\Temp\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Cookies\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\History\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\PrivacIE\*"
  del /f /q /s "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\ReportArchive\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Macromedia\Flash Player\*"
  del /f /q /s "%USERPROFILE%\AppData\Local\Microsoft\Terminal Server Client\Cache\*"
  del /f /q /s "%USERPROFILE%\AppData\Local\Temp\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Mozilla\Firefox\Profiles\*.default\Cache\*"
  del /f /q /s "%USERPROFILE%\AppData\LocalLow\Adobe\Acrobat\9.0\Search\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Microsoft\Office\Recent\*"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Microsoft\Office\*.tmp"
  rd /s /q "%systemdrive%\$Recycle.bin"
  del /f /q /s "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent\*"
  echo Junk files deleted!
) else (
  echo Junk files not deleted.
)

:: Made by Bubbles
:: Discord: bvbbles_
:: Discord Community: https://discord.gg/bubblescm

@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
@echo off

:SearchRemover
cls
color D
echo (Bubbles) Usuwanie Search...
taskkill /F /IM SearchHost.exe
taskkill /F /IM StartMenuExperienceHost.exe
taskkill /F /IM ShellExperienceHost.exe
set "SearchFileToDelete1=C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe"
set "SearchFileToDelete2=C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\StartMenuExperienceHost.exe"
set "SearchFileToDelete3=C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy\ShellExperienceHost.exe"
if exist "%SearchFileToDelete1%" (
    echo.
    echo Przejmowanie wlasnosci pliku.
    takeown /F "%SearchFileToDelete1%" >nul 2>&1
    echo Dostosowywanie uprawnien.
    icacls "%SearchFileToDelete1%" /grant administrators:F >nul 2>&1
    echo Usuwanie SearchHost.exe.
    del "%SearchFileToDelete1%" /f /q
    echo Plik zostal pomyslnie usuniety.
) else (
    echo Plik nie znaleziony: %SearchFileToDelete1%.
)
if exist "%SearchFileToDelete2%" (
    echo.
    echo Przejmowanie wlasnosci pliku.
    takeown /F "%SearchFileToDelete2%" >nul 2>&1
    echo Dostosowywanie uprawnien.
    icacls "%SearchFileToDelete2%" /grant administrators:F >nul 2>&1
    echo Usuwanie StartMenuExperienceHost.exe.
    del "%SearchFileToDelete2%" /f /q
    echo Zmiana nazwy pliku: StartMenuExperienceHost.exe...
    REN "%SearchFile2%" "StartMenuExperienceHost.exee"
    echo Plik StartMenuExperienceHost.exe zostal przekonwertowany na StartMenuExperienceHost.exee
) else (
    echo Plik nie znaleziony: %SearchFileToDelete2%.
)
if exist "%SearchFileToDelete3%" (
    echo.
    echo Przejmowanie wlasnosci pliku.
    takeown /F "%SearchFileToDelete3%" >nul 2>&1
    echo Dostosowywanie uprawnien.
    icacls "%SearchFileToDelete3%" /grant administrators:F >nul 2>&1
    echo Usuwanie ShellExperienceHost.exe.
    del "%SearchFileToDelete3%" /f /q
    echo Plik zostal pomyslnie usuniety.
) else (
    echo Plik nie znaleziony: %SearchFileToDelete3%.
)
timeout 2 > nul
@echo off
	fsutil dirty query %systemdrive% >nul
	if %errorlevel% == 0 goto :IsRun
	( echo Set UAC = CreateObject^("Shell.Application"^)
		echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1
	)> "%temp%\RunAdmin.vbs"
	"%temp%\RunAdmin.vbs"
	del "%temp%\RunAdmin.vbs"
exit

:IsRun
@echo Off
Mode 100,25
    title FAKE CPU OR GPU BY : MIDNIGHT
:bitch
    chcp 65001

if %errorlevel% neq 0 start "" /wait /I /min powershell -NoProfile -Command start -verb runas "'%~s0'" && exit /b

    ::Blank/Color Character

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
:menu
cls
ECHO.       
ECHO.      
@echo                                     %COL%[35m █████▒ ▄▄▄       ██ ▄█▀▓█████ 
@echo                                      ▓██   ▒▒████▄     ██▄█▒ ▓█   ▀ 
@echo                                      ▒████ ░▒██  ▀█▄  ▓███▄░ ▒███   
@echo                                      ░▓█▒  ░░██▄▄▄▄██ ▓██ █▄ ▒▓█  ▄ 
@echo                                      ░▒█░    ▓█   ▓██▒▒██▒ █▄░▒████▒
@echo                                      ▒ ░    ▒▒   ▓▒█░▒ ▒▒ ▓▒░░ ▒░ ░
@echo                                      ░       ▒   ▒▒ ░░ ░▒ ▒░ ░ ░  ░
@echo                                      ░ ░     ░   ▒   ░ ░░ ░    ░   
@echo                                      ░  ░░  ░      ░  ░                       
ECHO.
ECHO.

ECHO.                    %COL%[31m: %COL%[37mEDIT By MidNight DIDCORD %COL%[31m: %COL%[32mhttps://discord.gg/qZj5FREgeM %COL%[31m:
ECHO.
ECHO.                                        %COL%[35mFAKE STATUS CPU AND GPU
ECHO.                                
ECHO.                    %COL%[36mPRESS  %COL%[31m1 :FAKE CPU                %COL%[32m=   %COL%[33mCore(TM) i9-13400K
ECHO.                    %COL%[36mPRESS  %COL%[31m2 :FAKE GPU                %COL%[32m=   %COL%[33mRTX 4090 TI
ECHO.                    %COL%[36mPRESS  %COL%[31m3 :RESET GPU               %COL%[32m=   %COL%[33mDefault
ECHO.                    %COL%[36mPRESS  %COL%[31m4 :HOW TO RESET CPU        %COL%[32m=   %COL%[33mCopy link and OPEN IT!
ECHO.                                
ECHO.                                
ECHO.                                
ECHO.                                



set /p Freem="%COL%[31m:%COL%[37mMIDNIGHT%COL%[31m: %COL%[35mC%COL%[32mO%COL%[31mM%COL%[33mM%COL%[35mA%COL%[36mN%COL%[32mD %COL%[32mP%COL%[31mR%COL%[33mE%COL%[35mS%COL%[36mS %COL%[33mN%COL%[32mU%COL%[31mM%COL%[33mB%COL%[35mE%COL%[36mR %COL%[35m>%COL%[37m
if %Freem%== 1 Goto :CPU
if %Freem%== 2 Goto :GPU
if %Freem%== 3 Goto :goback
if %Freem%== 4 Goto :Link
if %Freem%== 5 Goto :EXIT

:CPU
@echo off
Reg.exe add "HKLM\HARDWARE\DESCRIPTION\System\CentralProcessor\0" /v "ProcessorNameString" /t REG_SZ /d "13th Gen Intel(R) Core(TM) i9-13400K" /f

pause
goto menu

:GPU
@echo off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Video" /v "DeviceDesc" /t REG_SZ /d "NVIDIA GeForce RTX 4090 TI" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_1F08&SUBSYS_37551462&REV_A1\4&1c89b88&0&0008" /v "DeviceDesc" /t REG_SZ /d "NVIDIA GeForce RTX 4090 TI" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Video\{1DDB7A13-778A-11EE-83E8-047C1608EB3E}\Video" /f

pause
goto menu

:goback
@echo off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Video" /v "DeviceDesc" /t REG_SZ /d "@oem10.inf,%%nvidia_dev.1f08.3755.1462%%;NVIDIA GeForce RTX 4090 TI" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\VEN_10DE&DEV_1F08&SUBSYS_37551462&REV_A1\4&1c89b88&0&0008" /v "DeviceDesc" /t REG_SZ /d "@oem10.inf,%%nvidia_dev.1f08.3755.1462%%;NVIDIA GeForce RTX 4090 TI" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Video\{1DDB7A13-778A-11EE-83E8-047C1608EB3E}\Video" /f

pause
goto menu

:Link
ECHO.
ECHO.                      ::::::::::::::::::::::::::::::::::::::
ECHO.                      ::     COPY AND PRESS IN GOOGLE     ::
ECHO.                      ::     ------------------------     ::
ECHO.                      ::               LinK               ::
ECHO.                      ::     ------------------------     ::
ECHO.                      ::  https://streamable.com/trfez2   ::
ECHO.                      ::     ------------------------     ::
ECHO.                      ::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO.
ECHO.
pause
goto menu




:EXIT
exit
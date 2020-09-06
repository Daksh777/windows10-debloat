title Activater For Windows 10 PRO - wuseman @ 2o18 - https://github.com/wuseman

cscript c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
set i=1
:server
if %i%==1 set KMS_Sev=kms7.MSGuides.com
if %i%==2 set KMS_Sev=kms8.MSGuides.com
if %i%==3 set KMS_Sev=kms9.MSGuides.com
if %i%==4 goto notsupported
cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >$null 2>&1
cscript  c:\windows\system32\slmgr.vbs /ato 
@echo
@echo ..Done.. windows is now verified, have fun!
@echo
@echo Removing verification lookup
reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v NoGenTicket /t REG_DWORD /d 1 /f
@echo
@echo We do not want alot of schedule running in background for system perfomence
@echo Windows 10 has a huge amount of scheduled tasks that may report some data. Type these commands in the command prompt to remove them: >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable 
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable >$null 2>&1 
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable >$null 2>&1 
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable >$null 2>&1 
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" /disable >$null 2>&1
del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*"  >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Turn of all auto updates from Microsoft Windows, it´s our choice if we wanna use this. eh?
@echo
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 2 /f >$null 2>&1 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v ScheduledInstallDay /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v ScheduledInstallTime /t REG_DWORD /d 3 /f >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Set windows defender permanent off (This will take a while ~1-5min)
@echo
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >$null 2>&1
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t 
REG_DWORD /d "0" /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 1 /f >$null 2>&1
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /f >$null 2>&1 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f  >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f >$null 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f >$null 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /f >$null 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f >$null 2>&1
install_wim_tweak /o /c Windows-Defender /r >$null 2>&1
install_wim_tweak /o /c Microsoft-Windows-ContentDeliveryManager /r >$null 2>&1
install_wim_tweak /o /c Microsoft-Windows-Store /r
# reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /t REG_DWORD /d 1 /f >$null 2>&1
# reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /t REG_DWORD /d 1 /f >$null 2>&1
# reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d 0 /f >$null 2>&1
# reg add "HKLM\SOFTWARE\Policies\Microsoft\PushToInstall" /v DisablePushToInstall /t REG_DWORD /d 1 /f >$null 2>&1
# reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f >$null 2>&1
# sc delete PushToInstall
# sc delete InstallService
@echo
@echo ..Done
@echo
@echo
@echo We do not play xbox360 or DVR, so we shut down that shit.
@echo
Get-AppxPackage -AllUsers *xbox* | Remove-AppxPackage >$null 2>&1
sc delete XblAuthManager >$null 2>&1
sc delete XblGameSave >$null 2>&1
sc delete XboxNetApiSvc >$null 2>&1
sc delete XboxGipSvc >$null 2>&1 
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f >$null 2>&1
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /disable >$null 2>&1
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /disable >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Removing windows maps
@echo
Get-AppxPackage -AllUsers *maps* | Remove-AppxPackage >$null 2>&1
sc delete MapsBroker >$null 2>&1
sc delete lfsvc >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /disable >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Removing alarms and clock, we use alarm on phone nowadays.
@echo
Get-AppxPackage -AllUsers *alarms* | Remove-AppxPackage >$null 2>&1
Get-AppxPackage -AllUsers *people* | Remove-AppxPackage >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Removing Paint 3D and VR Features
@echo
install_wim_tweak /o /c Microsoft-Windows-Holographic /r >$null 2>&1 
Get-AppxPackage -AllUsers *holo* | Remove-AppxPackage >$null 2>&1
Get-AppxPackage -AllUsers *3db* | Remove-AppxPackage  >$null 2>&1
Get-AppxPackage -AllUsers *3dv* | Remove-AppxPackage >$null 2>&1
Get-AppxPackage -AllUsers *paint* | Remove-AppxPackage >$null 2>&1
Get-AppxPackage -AllUsers *mixed* | Remove-AppxPackage >$null 2>&1
Get-AppxPackage -AllUsers *print3d* | Remove-AppxPackage >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Removing Sound Recorder
@echo
Get-AppxPackage -AllUsers *soundrec* | Remove-AppxPackage >$null 2>&1
@echo
@echo Removing Contacts, Support, Get Help
@echo
install_wim_tweak /o /c Microsoft-Windows-ContactSupport /r >$null 2>&1
Get-AppxPackage -AllUsers *GetHelp* | Remove-AppxPackage >$null 2>&1
Get-AppxPackage -AllUsers *sketch* | Remove-AppxPackage >$null 2>&1
schtasks /Change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /Disable >$null 2>&1
@echo
@echo Removing Cortana
@echo
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules"  /v "{2765E0F4-2918-4A46-B9C9-43CDD8FCBA2B}" /t REG_SZ /d  
"BlockCortana|Action=Block|Active=TRUE|Dir=Out|App= C:\windows\systemapps\microsoft.windows.cortana_cw5n1h2txyewy\searchui.exe|Name=Search  and Cortana  
application|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|" /f >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Turn off Windows Error Reporting
@echo
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Turn off License checking
@echo
reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v NoGenTicket /t REG_DWORD /d 1 /f >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Turn off all windows tips that is useless 
@echo
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableSoftLanding /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsSpotlightFeatures /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\Software\Policies\Microsoft\WindowsInkWorkspace" /v AllowSuggestedAppsInWindowsInkWorkspace /t REG_DWORD /d 0 /f >$null 2>&1
@echo
@echo ..Done
@echo
@echo
@echo Removing Telemetry and other unnecessary services
@echo
sc delete DiagTrack >$null 2>&1
sc delete dmwappushservice >$null 2>&1
sc delete WerSvc >$null 2>&1
sc delete OneSyncSvc >$null 2>&1
sc delete MessagingService >$null 2>&1
sc delete wercplsupport >$null 2>&1
sc delete PcaSvc >$null 2>&1
sc config wlidsvc start=demand >$null 2>&1
sc delete wisvc >$null 2>&1
sc delete RetailDemo >$null 2>&1
sc delete diagsvc >$null 2>&1
sc delete shpamsvc  >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "wscsvc" ^| find /i "wscsvc"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "OneSyncSvc" ^| find /i "OneSyncSvc"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "MessagingService" ^| find /i "MessagingService"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "PimIndexMaintenanceSvc" ^| find /i "PimIndexMaintenanceSvc"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UserDataSvc" ^| find /i "UserDataSvc"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "UnistoreSvc" ^| find /i "UnistoreSvc"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "BcastDVRUserService" ^| find /i "BcastDVRUserService"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "Sgrmbroker" ^| find /i "Sgrmbroker"') do (reg delete %I /f) >$null 2>&1
for /f "tokens=1" %I in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "ClipSVC" ^| find /i "ClipSVC"') do (reg delete %I /f) >$null 2>&1
sc delete diagnosticshub.standardcollector.service >$null 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f >$null 2>&1
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f >$null 2>&1
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKCU\Software\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f >$null 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f >$null 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f >$null 2>&1
@echo
@echo ..Done
:halt
pause >$null 2>&1

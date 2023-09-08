Write-Host "Starting Deployment Script"
Start-sleep -s 2

Write-Host "Here is the MAC Address of the device"
Start-sleep -s 2
Get-NetAdapter | Select-Object -Property Name, MacAddress
Get-NetAdapter | Select-Object -Property Name, MacAddress | Format-Table -AutoSize | Out-Host

Start-sleep -s 2
Write-Host "You can now give permission to the device in Unifi with the mac adress (wifi)"
Write-Host "If you have already done this, press Enter to continue"
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

Write-Host "Connecting to internet"
Start-sleep -s 2
netsh wlan add profile filename="..\..\Wi-Fi-synapse-medicine.xml"
start-sleep -s 10


Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host "Chocolatey Installed"
Start-Sleep -s 1

choco install googlechrome -y --ignore-checksums
Write-Host "Google Chrome Installed"
Start-Sleep -s 1
choco install firefox -y --ignore-checksums
Write-Host "Firefox Installed"
Start-Sleep -s 1
choco install zoom -y --ignore-checksums
Write-Host "Zoom Installed"
Start-Sleep -s 1
choco install slack -y --ignore-checksums
Write-Host "Slack Installed"
Start-Sleep -s 1
choco install googledrive -y --ignore-checksums
Write-Host "Google Drive Installed"
Start-Sleep -s 1
choco install keepassxc -y --ignore-checksums
Write-Host "KeePassXC Installed"
Start-Sleep -s 1
choco install vscode -y --ignore-checksums
Write-Host "VSCode Installed"
Start-Sleep -s 1
choco install notion -y --ignore-checksums
Write-Host "Notion Installed"
Start-Sleep -s 1
choco install git -y --ignore-checksums
Write-Host "Git Installed"
Start-Sleep -s 1
choco install python3 -y --ignore-checksums
Write-Host "Python3 Installed"
Start-Sleep -s 1

Write-Host "Checking and upgrading all packages"
Start-sleep -s 2
choco upgrade all -y --ignore-checksums

Write-Host "Status of Windows Defender"
Get-MpComputerStatus | Select-Object -Property Antivirusenabled,AMServiceEnabled,AntispywareEnabled,BehaviorMonitorEnabled,IoavProtectionEnabled,NISEnabled,OnAccessProtectionEnabled,RealTimeProtectionEnabled,IsTamperProtected,AntivirusSignatureLastUpdated

Start-sleep -s 2

Write-Host "Setting up Firewall"
Start-sleep -s 2
netsh advfirewall set publicprofile state on
netsh advfirewall set privateprofile state on
netsh advfirewall set domainprofile state on

Write-Host "Firewall setup complete"
Start-sleep -s 2

Write-Host "Need to Enable Bitlocker"
Start-sleep -s 2

Write-Host "End of Deployment Script"
Start-sleep -s 5

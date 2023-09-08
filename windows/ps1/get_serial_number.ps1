wmic bios get serialnumber

Start-Sleep -s 2

Write-Host "Press enter to exit"

$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

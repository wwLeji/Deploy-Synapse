Get-NetAdapter | Select-Object -Property Name, MacAddress
Get-NetAdapter | Select-Object -Property Name, MacAddress | Format-Table -AutoSize | Out-Host
Write-Host "Mac adresse is the Wifi one"

Start-sleep -s 2
Write-Host "Press enter to exit"
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
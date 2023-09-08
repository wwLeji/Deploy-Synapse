# run  deploy_windows.ps1 as admin
powershell -Command "Start-Process powershell -ArgumentList '-ExecutionPolicy Bypass -File ""%~dp0ps1\deploy_windows.ps1""' -Verb RunAs"
```
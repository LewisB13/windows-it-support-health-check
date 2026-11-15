#it support health check 

$report = Join-Path $PSScriptRoot "IT-HealthReport.txt"

"=== IT SUPPORT HEALTH CHECK ===" | Set-Content $report
"Date: $(Get-Date)" | Add-Content $report

#System info
"`n=== System ===" | Add-Content $report
Get-ComputerInfo | Select-Object CsName, WindowsProductName, OsVersion |
Out-String | Add-Content $report

#Network
"`n=== NETWORK ===" | Add-Content $report
Get-NetIPConfiguration | Where-Object IPv4DefaultGateway |
Out-String | Add-Content $report

#connectivity
"`n=== CONNECTIVITY ===" | Add-Content $report
if (Test-Connection 1.1.1.1 -Count 2 -Quiet){
    "PASS - Ping Successfull" | Add-Content $report
}else{
    "Warning - Ping Failed or Blocked" | Add-Content $report
}

#disk space
"`n=== STORAGE ===" | Add-Content $report
Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
ForEach-Object{
    $free = [math]::Round($_.FreeSpace / 1GB, 1)
    $total = [math]::Round($_.Size / 1GB, 1)
    "$($_.DeviceID) - $free GB free of $total GB"
} | Add-Content $report

#windows update
"`n=== WINDOWS UPDATE ===" | Add-Content $report
Get-Service wuauserv | Select-Object DisplayName, Status | 
Out-String | Add-Content $report

Write-Host "HEALTH CHECK COMPLETE! Report: $report" -ForegroundColor Green



Get-CimInstance -Class Win32_SystemDriver |
    Where-Object {$_.State -eq 'Running'}


Get-CimInstance -Class Win32_SystemDriver |
    Where-Object {$_.State -eq "Running"} |
    Where-Object {$_.StartMode -eq "Auto"}


Get-CimInstance -Class Win32_SystemDriver |
    Where-Object {$_.State -eq "Running"} |
    Where-Object {$_.StartMode -eq "Manual"} |
    Format-Table -Property Name,DisplayName


Get-CimInstance -Class Win32_SystemDriver |
    Where-Object {($_.State -eq 'Running') -and ($_.StartMode -eq 'Manual')} |
    Format-Table -Property Name,DisplayName
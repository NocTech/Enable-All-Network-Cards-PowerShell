$adapters = Get-NetAdapter | Where-Object { $_.Status -ne 'Up' }

foreach ($adapter in $adapters) {
    Enable-NetAdapter -Name $adapter.Name
}

Write-Output "All network adapters have been enabled."

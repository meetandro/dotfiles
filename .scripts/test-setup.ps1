# Import arrays
. ./shared.ps1

# Modules
Write-Host "`nModules to install:"
foreach ($module in $modules) {
    Write-Host "$($module)"
}

# Buckets
Write-Host "`nBuckets to add:"
foreach ($bucket in $buckets) {
    Write-Host "$($bucket)"
}

# Apps
Write-Host "`nApps to install:"
foreach ($app in $apps) {
    Write-Host "$($app)"
}

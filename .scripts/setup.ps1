# Import arrays
. ./shared.ps1

# Set execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Install modules
foreach ($module in $modules) {
    Install-Module -Name $module -Scope CurrentUser -Force
}

# Install Scoop
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# Add buckets
foreach ($bucket in $buckets) {
    scoop bucket add $bucket
}

# Install apps
scoop install $apps

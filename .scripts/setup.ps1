# Set execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Install modules
$modules = @(
    "z",
    "Terminal-Icons"
)

foreach ($module in $modules) {
    Install-Module -Name $module -Scope CurrentUser -Force
}

# Install Scoop
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# Add buckets
$buckets = @(
    "main",
    "extras",
    "versions",
    "nerd-fonts"
)

foreach ($bucket in $buckets) {
    scoop bucket add $bucket
}

# Install apps
$apps = @(
    "7zip",
    "dark",
    "dotnet-sdk-lts",
    "fd",
    "gcc",
    "git",
    "jetbrains-toolbox",
    "JetBrainsMono-NF-Mono",
    "lazygit",
    "miniconda3",
    "neovim",
    "nodejs-lts",
    "ripgrep",
    "starship",
    "winfetch"
)

scoop install $apps

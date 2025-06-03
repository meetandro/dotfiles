# Alias
sal vi nvim -Scope Global
sal g git -Scope Global
sal lg lazygit -Scope Global
sal neofetch winfetch -Scope Global

# Starship
Invoke-Expression (&starship init powershell)

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView

# List excluding dotfiles/folders
function list {
    Get-ChildItem | Where-Object { !($_.Name -like '.*') }
}

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

# Utility function to list files/directories not starting with a dot
function list {
    Get-ChildItem | Where-Object -Property Name -NotLike '.*'
}

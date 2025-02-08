# Alias
sal vi nvim -Scope Global
sal g git -Scope Global
sal lg lazygit -Scope Global

# Starship
Invoke-Expression (&starship init powershell)

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView

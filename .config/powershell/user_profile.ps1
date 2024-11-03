# Alias
sal vim nvim -Scope Global
sal g git -Scope Global

# Oh My Posh
oh-my-posh init pwsh --config "$env:CUSTOM_POSH_THEMES_PATH\meetandro.omp.json" | Invoke-Expression

# Terminal Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs

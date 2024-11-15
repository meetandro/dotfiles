![nvim home screenshot](./images/nvim-home.png)

![nvim config screenshot](./images/nvim-config.png)

![powershell theme screenshot](./images/powershell-theme.png)

## Box Contents

- Neovim config
- PowerShell config
- Git config

## Dependencies

- [PowerShell](https://apps.microsoft.com/detail/9mz1snwt0n5d?hl=en-us&gl=US) (modules list below)
  - [z](https://www.powershellgallery.com/packages/z/1.1.9)
  - [Terminal Icons](https://www.powershellgallery.com/packages/Terminal-Icons/0.9.0)
  - [PSReadLine](https://www.powershellgallery.com/packages/PSReadLine/2.1.0)
- [Scoop](https://scoop.sh/) (buckets list below)
  - neovim
  - lazygit
  - gcc & nodejs-lts (for neovim)
  - ripgrep & fd (for searching)
- [Oh My Posh](https://ohmyposh.dev/)
- [Git](https://git-scm.com/)

## Details

The Neovim config is built on top of the [LazyVim](https://www.lazyvim.org/) setup.

It is also important to note that a [nerd font](https://www.nerdfonts.com/) is required for nearly anything to visually appear.

`.gitconfig` expects a global `.gitignore`:

```ini
[core]
    excludesFile = ~/.gitignore
```

As well as a local `.gitconfig`:

```ini
[include]
    path = ~/.gitconfig.local
```

If these files are not present, they will be silently ignored.

`user_profile.ps1` expects a `CUSTOM_POSH_THEMES_PATH` environment variable, which is essentially the directory from where it gets the custom theme from:

```powershell
oh-my-posh init pwsh --config "$env:CUSTOM_POSH_THEMES_PATH\meetandro.omp.json" | Invoke-Expression
```

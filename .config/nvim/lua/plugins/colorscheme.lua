--[====[return {
  "tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
}--]====]

return {
  "briones-gabriel/darcula-solid.nvim",
  dependencies = { { "rktjmp/lush.nvim", opts = {} } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darcula-solid",
    },
  },
}

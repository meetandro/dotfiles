-- Change indent level for lua and html files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "html" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end,
})

-- Quickly run python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      ":w<CR>:below split|term python %<CR>i",
      { noremap = true, silent = true }
    )
  end,
})

-- Quickly run dotnet
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      ":w<CR>:below split|term dotnet run %<CR>i",
      { noremap = true, silent = true }
    )
  end,
})

-- Change indent level for lua and html files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "html" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
  end,
})

-- Quickly run dotnet
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    vim.keymap.set("n", "<F5>", ":w<CR>:below split|term dotnet run %<CR>i", { desc = "Run .NET project" })
  end,
})

-- Quickly run python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.keymap.set("n", "<F5>", ":w<CR>:below split|term python %<CR>i", { desc = "Run Python file" })
  end,
})

-- Create python venv
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.keymap.set("n", "<leader>cV", ":below split|term python -m venv .venv<CR>", { desc = "Create VirtualEnv" })
  end,
})

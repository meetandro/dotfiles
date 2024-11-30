-- Navigation
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<F9>", "<cmd>:cd %:h<cr>", { desc = "CD to current directory" })

-- Debugging
vim.keymap.set("n", "<S-F5>", "<cmd>lua require'dap'.continue()<cr>", { desc = "Start Debugging" })

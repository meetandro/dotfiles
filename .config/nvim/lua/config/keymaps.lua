-- Navigation
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Debugging
vim.keymap.set("n", "<F1>", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step Into" })
vim.keymap.set("n", "<F2>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<F3>", "<cmd>lua require'dap'.terminate()<cr>", { desc = "Terminate Debugging Proccess" })
vim.keymap.set("n", "<S-F5>", "<cmd>lua require'dap'.continue()<cr>", { desc = "Start Debugging" })

-- Changing Directories
vim.keymap.set("n", "<F9>", "<cmd>:cd %:h<cr>", { desc = "CD to current directory" })

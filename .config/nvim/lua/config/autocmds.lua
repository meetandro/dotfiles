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

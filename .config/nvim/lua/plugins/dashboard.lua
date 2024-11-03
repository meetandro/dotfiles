return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
        local logo = [[
        ███╗   ███╗███████╗███████╗████████╗ █████╗ ███╗   ██╗██████╗ ██████╗  ██████╗ 
        ████╗ ████║██╔════╝██╔════╝╚══██╔══╝██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗
        ██╔████╔██║█████╗  █████╗     ██║   ███████║██╔██╗ ██║██║  ██║██████╔╝██║   ██║
        ██║╚██╔╝██║██╔══╝  ██╔══╝     ██║   ██╔══██║██║╚██╗██║██║  ██║██╔══██╗██║   ██║
        ██║ ╚═╝ ██║███████╗███████╗   ██║   ██║  ██║██║ ╚████║██████╔╝██║  ██║╚██████╔╝
        ]]

        logo = string.rep("\n", 5) .. logo .. "\n\n\n\n"
        opts.config.header = vim.split(logo, "\n")
        opts.config.center = {
            {
                action = 'lua require("persistence").load()',
                desc = " Restore Session",
                icon = " ",
                key = "s",
            },
            {
                action = 'lua LazyVim.pick("oldfiles")()',
                desc = " Recent Files",
                icon = " ",
                key = "r",
            },
            {
                action = "lua LazyVim.pick()()",
                desc = " Find File",
                icon = " ",
                key = "f",
            },
            {
                action = 'lua LazyVim.pick("live_grep")()',
                desc = " Find Text",
                icon = " ",
                key = "g",
            },
            {
                action = "lua LazyVim.pick.config_files()()",
                desc = " Config",
                icon = " ",
                key = "c",
            },
        }
        opts.config.footer = function()
            return { "" }
        end

        for _, button in ipairs(opts.config.center) do
            button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            button.key_format = "  %s"
        end
    end,
}

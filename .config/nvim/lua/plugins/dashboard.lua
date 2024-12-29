return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function(_, opts)
    local logo = [[
██╗   ██╗██╗
██║   ██║██║
██║   ██║██║
╚██╗ ██╔╝██║
 ╚████╔╝ ██║
  ╚═══╝  ╚═╝
        ]]

    logo = string.rep("\n", 5) .. logo .. "\n\n\n\n"
    opts.config.header = vim.split(logo, "\n")
    opts.config.center = {
      {
        action = 'lua require("persistence").load()',
        desc = " Last Session",
        icon = " ",
        key = "s",
      },
      {
        action = 'lua LazyVim.pick("oldfiles")()',
        desc = " Recents",
        icon = " ",
        key = "r",
      },
      {
        action = "lua LazyVim.pick()()",
        desc = " File Search",
        icon = " ",
        key = "f",
      },
      {
        action = 'lua LazyVim.pick("live_grep")()',
        desc = " Text Search",
        icon = " ",
        key = "g",
      },
      {
        action = "lua LazyVim.pick.config_files()()",
        desc = " Configuration",
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

    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
    end
  end,
}

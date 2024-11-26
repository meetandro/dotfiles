return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    dap.adapters.coreclr = {
      type = "executable",
      command = vim.fn.stdpath("data") .. "/mason/packages/netcoredbg/netcoredbg/netcoredbg.exe",
      args = { "--interpreter=vscode" },
    }

    -- DLL path template for running/debugging
    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "Launch .NET App",
        request = "launch",
        program = function()
          return vim.fn.input("Path to DLL: ", vim.fn.getcwd() .. "/bin/Debug/net8.0/NAME.dll", "file")
        end,
        env = {
          ASPNETCORE_ENVIRONMENT = "Development",
        },
      },
    }
  end,
}

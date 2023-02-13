lvim.builtin.dap.on_config_done = function(dap)
  --   -- dap.adapters.codelldb = codelldb_adapter
  -- dap.adapters.node = node_adapter
  dap.configurations.javascript = {
    {
      name = "Debug Tests",
      type = "pwa-node",
      request = "launch",
      args = { "${file}" },
      sourceMaps = true,
      protocol = "inspector",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      runtimeArgs = { "${workspaceFolder}/node_modules/.bin/hardhat", "test" },
      rootPath = "${workspaceFolder}",
      runtimeExecutable = "node",
      internalConsoleOptions = "neverOpen",
      outFiles = { "${workspaceFolder}/**/*.js", "**/@ethersproject/**/*.js" },
      skipFiles = { "<node_internals>/**", "node_modules" },
    },
  }
end

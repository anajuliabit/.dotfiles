-- general
lvim.leader = "space"
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "catppuccin"
lvim.use_icons = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true

lvim.lsp.automatic_servers_installation = false
lvim.lsp.installer.setup.ensure_installed = {
  "solidity",
}

--- Customization
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""

-- Fix whichkey delay
vim.opt.timeoutlen = 250

require "user.plugins"
require "user.theme"

-- local dap = require("dap")

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
      runtimeArgs = { "test", "--experimental-modules" },
      rootPath = "${workspaceFolder}",
      runtimeExecutable = "npm",
      outFiles = { "${workspaceFolder}/**/*.js", "**/@ethersproject/**/*.js" },
      skipFiles = { "<node_internals>/**" },
    },
  }
end

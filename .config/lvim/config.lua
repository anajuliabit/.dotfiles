-- general
lvim.leader = "space"
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "kanagawa"
lvim.use_icons = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "rust",
  "solidity",
  "yaml",
}
lvim.builtin.treesitter.highlight.enabled = true
lvim.lsp.automatic_servers_installation = false

--- Customization
lvim.builtin.dap.active = false -- change this to enable/disable debugging
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""

-- Fix whichkey delay
vim.opt.timeoutlen = 250

require "user.mappings"
require "user.plugins"
require "user.theme"

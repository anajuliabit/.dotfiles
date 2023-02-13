-- general
lvim.leader = "space"
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "catppuccin"
lvim.use_icons = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""
lvim.lsp.automatic_servers_installation = false
lvim.lsp.installer.setup.ensure_installed = {
  "solidity",
}

-- Fix whichkey delay
vim.opt.timeoutlen = 250

vim.g.use_nerd_icons = true

require "user.plugins"
require "user.theme"
require "user.mappings"
require "user.dap"

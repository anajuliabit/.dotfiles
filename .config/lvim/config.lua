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

--- Customization
lvim.builtin.dap.active = true -- change this to enable/disable debugging
lvim.builtin.tree_provider = "nvimtree" -- can be "neo-tree" or "nvimtree" or ""

-- Fix whichkey delay
vim.opt.timeoutlen = 250

require "user.mappings"
require "user.plugins"
require "user.theme"

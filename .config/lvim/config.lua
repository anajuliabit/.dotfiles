-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "kanagawa"
lvim.use_icons = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
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

require "user.mappings"
require "user.plugins"
require "user.theme"

require("nvim-treesitter.parsers").get_parser_configs().solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = { "src/parser.c" },
    requires_generate_from_grammar = true,
  },
  filetype = "solidity",
}

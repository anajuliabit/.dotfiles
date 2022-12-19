lvim.builtin.telescope.extensions.live_grep_args = {
  auto_quoting = false,
  default_mappings = {
    n = {
      ["<C-k>"] = "move_selection_previous",
      ["<C-j>"] = "move_selection_next",
    },
  }
}
lvim.builtin.treesitter.get_parser_configs().solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = { "src/parser.c" },
    requires_generate_from_grammar = true,
  },
  filetype = "solidity",
}
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "javascript",
  "json",
  "lua",
  "rust",
  "solidity",
  "yaml",
}
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

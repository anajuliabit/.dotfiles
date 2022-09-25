lvim.builtin.telescope.extensions.live_grep_args = {
  auto_quoting = false,
  default_mappings = {
    n = {
      ["<C-k>"] = "move_selection_previous",
      ["<C-j>"] = "move_selection_next",
    },
  }
}

-- require("nvim-treesitter.parsers").get_parser_configs().solidity = {
--   install_info = {
--     url = "https://github.com/JoranHonig/tree-sitter-solidity",
--     files = { "src/parser.c" },
--     requires_generate_from_grammar = true,
--   },
--   filetype = "solidity",
-- }

lvim.builtin.treesitter.get_parser_configs().solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = { "src/parser.c" },
    requires_generate_from_grammar = true,
  },
  filetype = "solidity",
}

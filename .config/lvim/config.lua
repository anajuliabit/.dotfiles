-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
lvim.use_icons = false

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

-- configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
require("lvim.lsp.manager").setup("solidity_ls", {
  settings = {
    solidity = {
      packageDefaultDependenciesContractDirectory = "",
      packageDefaultDependenciesDirectory = "node_modules",
      enabledAsYouTypeCompilationErrorCheck = true,
      linter = "solhint",
    }
  }
})

require "user.mappings"
require "user.plugins"

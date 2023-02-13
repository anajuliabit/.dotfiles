local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup({ { exe = "prettier", filetypes = { "solidity" }, args = { "--find-config-path", "--config" } } })

local manager = require "lvim.lsp.manager"

local util = require "lspconfig/util"

manager.setup("solidity-ls", {
  root_dir = util.root_pattern("hardhat.config.*", ".git"),
})

manager.setup("solidity", {
  settings = {
    solidity = { includePath = '' }
  }
})

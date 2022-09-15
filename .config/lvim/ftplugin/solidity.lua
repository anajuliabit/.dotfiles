local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup({ { exe = "prettier", filetypes = { "solidity" } } })

local manager = require "lvim.lsp.manager"

manager.setup("solidity_ls", {
  settings = {
    solidity = {
      packageDefaultDependenciesContractDirectory = "",
      packageDefaultDependenciesDirectory = "node_modules",
      enabledAsYouTypeCompilationErrorCheck = true,
      linter = "solhint",
    }
  }
})

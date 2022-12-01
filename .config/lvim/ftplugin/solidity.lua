local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup({ { exe = "prettier", filetypes = { "solidity" } } })

local manager = require "lvim.lsp.manager"


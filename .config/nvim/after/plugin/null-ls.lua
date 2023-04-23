local null_ls = require("null-ls")

local lsp_formatting = function(bufnr)
	vim.lsp.buf.format({
		filter = function(client)
			-- apply whatever logic you want (in this example, we'll only use null-ls)
			return client.name == "null-ls"
		end,
		bufnr = bufnr,
	})
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				lsp_formatting(bufnr)
			end,
		})
	end
end

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.luacheck.with({
			args = { "--globals vim" },
		}),
		null_ls.builtins.code_actions.eslint,
		null_ls.builtins.completion.spell,
		--	null_ls.builtins.formatting.eslint.with({
		--		filetypes = {
		--			"javascript",
		--"typescript",
		--				"json",
		--				"yaml",
		--				"markdown",
		--			},
		--args = { "--find-config-path", "--config" }
		--		}),
		null_ls.builtins.diagnostics.solhint,
		null_ls.builtins.formatting.prettier.with({
			extra_filetypes = { "solidity" },
			--	args = { "--find-config-path", "--config", "--write" },
		}),
	},
	on_attach = on_attach,
	debug = true,
})

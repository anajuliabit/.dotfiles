local status_ok, dap_vscode_js = pcall(require, "dap-vscode-js")
if not status_ok then
	return
end

dap_vscode_js.setup({
	debugger_path = vim.fn.stdpath("data")
		.. "/mason/packages/js-debug-adapter",
	debugger_cmd = { "js-debug-adapter" },
	adapters = {
		"pwa-node",
		"pwa-chrome",
		"pwa-msedge",
		"node-terminal",
		"pwa-extensionHost",
	},
})

require("dap").configurations.javascript = {
	{
		name = "Debug Tests",
		type = "pwa-node",
		request = "launch",
		args = {
			"${file}",
			"--config",
			"./hardhat-fork.config.js",
			"--show-stack-traces",
		},
		sourceMaps = true,
		protocol = "inspector",
		cwd = "${workspaceFolder}",
		console = "integratedTerminal",
		runtimeArgs = { "${workspaceFolder}/node_modules/.bin/hardhat", "test" },
		rootPath = "${workspaceFolder}",
		runtimeExecutable = "node",
		internalConsoleOptions = "neverOpen",
		outFiles = { "${workspaceFolder}/**/*.js", "**/@ethersproject/**/*.js" },
		skipFiles = { "<node_internals>/**", "node_modules" },
	},
}

vim.keymap.set("n", "<leader>dc", "<cmd>lua require('dap').continue()<CR>")
vim.keymap.set(
	"n",
	"<leader>dt",
	"<cmd>lua require('dap').toggle_breakpoint()<CR>"
)
vim.keymap.set("n", "<leader>do", "<cmd>lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<leader>di", "<cmd>lua require('dap').step_into()<CR>")

require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

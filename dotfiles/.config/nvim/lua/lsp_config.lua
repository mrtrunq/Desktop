require("lspconfig").lua_ls.setup({
	on_attach = require("plugin.configs.lspconfig")
	capabilities = require("cmp_nvim_lsp").default_capabilities(),

	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

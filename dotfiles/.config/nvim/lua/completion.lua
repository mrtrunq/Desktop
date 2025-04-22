require("cmp").setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	mapping = require("cmp").mapping.preset.insert({
		["<C-i>"] = require("cmp").mapping.abort(),
		["<C-j>"] = require("cmp").mapping.scroll_docs(4),
		["<C-k>"] = require("cmp").mapping.scroll_docs(-4),
		["<C-M-Space>"] = require("cmp").mapping.complete(),
		["<Tab>"] = require("cmp").mapping.confirm({ select = true }),
	}),

	sources = require("cmp").config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),

	window = {
		completion = require("cmp").config.window.bordered(),
		documentation = require("cmp").config.window.bordered(),
	},
})

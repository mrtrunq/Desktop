require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"vimdoc"
	},

	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true }
})

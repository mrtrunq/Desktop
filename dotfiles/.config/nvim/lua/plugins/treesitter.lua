require('nvim-treesitter.configs').setup {
	ensure_installed = { "c", "bash", "vim", "lua" },
	highlight = { enable = true },
	indent = { enable = true },
	fold = { enable = true }
}


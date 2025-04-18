require("transparent").setup({
  groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
  },
})

		require("transparent").clear_prefix("NeoTree")
		require("transparent").clear_prefix("lualine")
		-- depends on pc, these settings are needed
		vim.cmd("highlight Normal guibg=NONE")
		vim.cmd("highlight Lualine guibg=NONE")
		vim.cmd("highlight Lualine guifg=NONE")
		vim.cmd("highlight NormalNC guibg=NONE")
		vim.cmd("highlight CursorLine guibg=NONE")

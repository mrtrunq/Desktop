require("vscode").setup( { transparent = true } )
require("vscode").load()
vim.cmd.colorscheme "vscode"
vim.api.nvim_set_hl(0, 'Cursorline', { bg = '#44475A' })
vim.api.nvim_set_hl(0, 'CursorlineNr', { bg = '#44475A' })


--🟩 [Scheme]

vim.cmd('colorscheme vscode')   -- Enable theme
vim.o.termguicolors = true      -- Enable theme in Terminal
vim.env.TERM = "xterm-256color" -- Environment
------------------------------
--⚪️ Terminal transparency
if vim.fn.has('gui_running') == 0 then
    vim.cmd('hi Normal ctermbg=NONE guibg=NONE')
end

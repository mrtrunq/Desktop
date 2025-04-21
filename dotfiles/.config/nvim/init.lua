-- vim_options
vim.opt.syntax = "on"
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.showmode = false
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.g.mapleader = " "
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamed"
vim.g.loaded_matchparen = 1
vim.env.TERM = "xterm-256color"
-- ------------------------------
-- vim_keymaps
vim.keymap.set("n", "j", "gjzz", { noremap = true })
vim.keymap.set("v", "j", "gjzz", { noremap = true })
vim.keymap.set("n", "k", "gkzz", { noremap = true })
vim.keymap.set("v", "k", "gkzz", { noremap = true })

vim.keymap.set("n", "J", "5gjzz", { noremap = true })
vim.keymap.set("v", "J", "5gjzz", { noremap = true })
vim.keymap.set("n", "K", "5gkzz", { noremap = true })
vim.keymap.set("v", "K", "5gkzz", { noremap = true })

vim.keymap.set("n", "H", "5h", { noremap = true })
vim.keymap.set("v", "H", "5h", { noremap = true })
vim.keymap.set("n", "L", "5l", { noremap = true })
vim.keymap.set("v", "L", "5l", { noremap = true })

vim.keymap.set("n", "X", "d^i", { noremap = true })
vim.keymap.set("n", "G", "Gzz", { noremap = true })
vim.keymap.set("n", "U", "<C-r>", { noremap = true })

vim.keymap.set("n", "n", "nzz", { noremap = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true })
-- ······························
vim.keymap.set("n", "<C-d>", "yyp", { noremap = true })
vim.keymap.set("i", "<C-d>", "<Esc>yyp", { noremap = true })

vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { noremap = true })

vim.keymap.set("n", "<A-Up>", ":m .-2<CR>", { noremap = true })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>", { noremap = true })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { noremap = true })

vim.keymap.set("n", "<leader>j", "gT", { noremap = true })
vim.keymap.set("n", "<leader>k", "gt", { noremap = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })
-- ------------------------------
-- neovim_options
vim.opt.laststatus = 0
-- vim.cmd.colorscheme "vscode"
-- ······························
-- neovim_autocmds
-- ······························
-- neovim_keymaps
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("i", "<C-v>", '"+p')
vim.keymap.set("v", "<C-v>", '"+p')
-- ------------------------------
-- neovim_lua
require("vscode").setup({
	transparent = true
})
require('vscode').load()
require("nvim-surround").setup()


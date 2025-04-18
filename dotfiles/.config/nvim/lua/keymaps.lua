vim.keymap.set("n", "j", "gjzz", { noremap = true })  -- 1
vim.keymap.set("v", "j", "gjzz", { noremap = true })  -- 2
vim.keymap.set("n", "k", "gkzz", { noremap = true })  -- 3
vim.keymap.set("v", "k", "gkzz", { noremap = true })  -- 4

vim.keymap.set("n", "J", "5gjzz", { noremap = true }) -- 5
vim.keymap.set("v", "J", "5gjzz", { noremap = true }) -- 6
vim.keymap.set("n", "K", "5gkzz", { noremap = true }) -- 7
vim.keymap.set("v", "K", "5gkzz", { noremap = true }) -- 8

vim.keymap.set("n", "H", "5h", { noremap = true })    -- 9
vim.keymap.set("v", "H", "5h", { noremap = true })    -- 10
vim.keymap.set("n", "L", "5l", { noremap = true })    -- 11
vim.keymap.set("v", "L", "5l", { noremap = true })    -- 12

vim.keymap.set("n", "X", "d^i", { noremap = true })   -- 13
vim.keymap.set("n", "G", "Gzz", { noremap = true })   -- 14
vim.keymap.set("n", "U", "<C-r>", { noremap = true }) -- 15

vim.keymap.set("n", "n", "nzz", { noremap = true })   -- 16
vim.keymap.set("n", "N", "nzz", { noremap = true })   -- 17
--······························
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true })          -- 1
vim.keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true })     -- 2
vim.keymap.set("v", "<C-a>", "<Esc>ggVG", { noremap = true })     -- 3

vim.keymap.set("v", "<C-c>", '"+y', { noremap = true })           -- 4

vim.keymap.set("n", "<C-d>", "yyp", { noremap = true })           -- 5
vim.keymap.set("i", "<C-d>", "<Esc>yyp", { noremap = true })      -- 6
vim.keymap.set("v", "<C-d>", "<Esc>yyp", { noremap = true })      -- 7

vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true })        -- 8
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { noremap = true })   -- 9

vim.keymap.set("n", "<C-v>", '"+p', { noremap = true })           -- 10
vim.keymap.set("i", "<C-v>", '<Esc>"+p', { noremap = true })      -- 11
vim.keymap.set("v", "<C-v>", '"+p', { noremap = true })           -- 12

vim.keymap.set("n", "<A-Up>", ":m .-2<CR>", { noremap = true })   -- 13
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>", { noremap = true }) -- 14

vim.keymap.set("n", "<leader>j", "gT", { noremap = true })        -- 15
vim.keymap.set("n", "<leader>k", "gt", { noremap = true })        -- 16
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })    -- 17


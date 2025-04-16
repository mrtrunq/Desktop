--🟩 [Mappings]

vim.g.mapleader = ' '
--······························
--⚪️ Silent

local mappings1 = {
    --⚫️ Char
    --
    { 'n', 'j',            'gjzz' },
    { 'v', 'j',            'gjzz' },
    { 'n', 'k',            'gkzz' },
    { 'v', 'k',            'gkzz' },

    { 'n', 'J',            '5jzz' },
    { 'v', 'J',            '5jzz' },
    { 'n', 'K',            '5kzz' },
    { 'v', 'K',            '5kzz' },

    { 'n', 'H',            '5h' },
    { 'v', 'H',            '5h' },
    { 'n', 'L',            '5l' },
    { 'v', 'L',            '5l' },

    { 'n', '1',            '^' },
    { 'v', '1',            '^' },
    { 'n', '2',            '$' },
    { 'v', '2',            '$' },

    { 'n', 'X',            'd^i' },
    { 'n', 'G',            'Gzz' },
    { 'n', 'U',            '<C-r>' },
    { 'v', 'S',            'xS' },

    { 'n', 'n',            'nzz' },
    { 'n', 'N',            'Nzz' },
    { 'n', '<CR>',         '<CR>zz' },
    { 'v', '<CR>',         '<CR>zz' },

    --⚫️ Modifier.keys
    { 'v', '<C-c>',        '"+y' },

    { 'n', '<C-v>',        '"+p' },
    { 'v', '<C-v>',        '"+p' },
    { 'i', '<C-v>',        '<Esc>"+p' },

    { 'n', '<C-z>',        'u' },
    { 'v', '<C-z>',        '<Esc>u' },
    { 'i', '<C-z>',        '<Esc>u' },

    { 'n', '<C-S-z>',      '<C-r>' },
    { 'v', '<C-S-z>',      '<Esc><C-r>' },
    { 'i', '<C-S-z>',      '<Esc><C-r>' },

    { 'n', '<C-d>',        'yyp' },
    { 'v', '<C-d>',        '<Esc>yyp' },
    { 'i', '<C-d>',        '<Esc>yyp' },

    { 'n', '<C-a>',        'ggVG' },
    { 'v', '<C-a>',        '<Esc>ggVG' },
    { 'i', '<C-a>',        '<Esc>ggVG' },
    { 'n', '<A-Up>',       ':m .-2<CR>' },
    { 'n', '<A-Down>',     ':m .+1<CR>' },

    { 'i', '<C-BS>',       '<C-S-w>' },
    { 'i', '<C-Del>',      '<C-o>dw' },

    { 'n', '<C-S-f>',      ':lua vim.lsp.buf.format()<CR>' },
    { 'v', '<C-S-f>',      ':lua vim.lsp.buf.format()<CR>' },

    { 'n', '<C-k><C-w>',   ':bufdo bd<CR>' },
    { 'n', '<C-m><C-m>',        'za' },

    --⚫️ <leader>
    --
    { 'n', '<leader>h',    '<C-w>h' },
    { 'n', '<leader>l',    '<C-w>l' },

    --⚫️ Function.keys
    --
    { 'i', '<F5>',         '<C-O>:lua InsertDateTime()<CR>' },
    { 'v', '<F5>',         'xi<Esc>:lua InsertDateTime()<CR>' },

    { 'n', '<RightMouse>', ':call GuiShowContextMenu()<CR>' },
    { 'i', '<RightMouse>', '<Esc>:call GuiShowContextMenu()<CR>' },
    { 'x', '<RightMouse>', ':call GuiShowContextMenu()<CR>gv' },
    { 's', '<RightMouse>', '<C-G>:call GuiShowContextMenu()<CR>gv' },
}

for _, mapping in ipairs(mappings1) do
    vim.api.nvim_set_keymap(mapping[1], mapping[2], mapping[3], { noremap = true, silent = true })
end
------------------------------
--⚪️ Not.Silent
--
local mappings2 = {
    --⚫️ Modifier.keys
    --
    { 'n', '<C-s>', ':w<CR>' },
    { 'v', '<C-s>', '<Esc>:w<CR>' },
    { 'i', '<C-s>', '<Esc>:w<CR>' },
}

for _, mapping in ipairs(mappings2) do
    vim.api.nvim_set_keymap(mapping[1], mapping[2], mapping[3], { noremap = true, silent = false })
end
------------------------------
--⚪️ Function

function InsertDateTime()
    local datetime = os.date("%I:%M %p %d/%m/%Y")
    vim.api.nvim_command("normal! a" .. datetime)
end

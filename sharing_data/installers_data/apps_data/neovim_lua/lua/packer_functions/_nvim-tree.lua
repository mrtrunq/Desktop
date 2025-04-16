--🟩 [nvim-tree]

--⚪️ General
--⚫️ Disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--······························
require('nvim-tree').setup {
    renderer = {
        indent_markers = {
            enable = true,
        },
    },
    view = { width = 33, },
    on_attach = function(bufnr)
        local api = require('nvim-tree.api')

        --⚫️ Default.Mappings
        api.config.mappings.default_on_attach(bufnr)

        --⚫️ Remove.Mappings
        local remove_mappings = {
            '<C-t>',
            'J',
            'K',
            'e',
            'u',
        }

        for _, mapping in ipairs(remove_mappings) do
            vim.api.nvim_buf_del_keymap(bufnr, 'n', mapping)
        end

        --⚫️ Add.Mappings
        local mappings = {
            { '<C-t>', ':NvimTreeClose<CR>:enew<CR>' },
            { 'J',     '5jzz' },
            { 'K',     '5kzz' },
            { 'e',     ':NvimTreeCollapse<CR>' },
            { 'u',     function() api.tree.change_root_to_parent() end },
        }
        local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }

        for _, mapping in ipairs(mappings) do
            vim.keymap.set('n', mapping[1], mapping[2], opts)
        end
    end
}
------------------------------
--⚪️ Mappings
local mappings = {
    --⚫️ Modifier_keys
    { 'n', '<C-h>',      ':NvimTreeClose<CR><C-w>H' },
    { 'n', '<C-l>',      ':NvimTreeClose<CR><C-w>L' },
    { 'n', '<C-t>',      ':NvimTreeClose<CR>:enew<CR>' },
    { 'n', '<C-S-w>',    ':NvimTreeClose<CR>:bdelete<CR>' },

    --⚫️ <leader>
    { 'n', '<leader>d',  ':NvimTreeClose<CR>:vsplit<CR>' },
    { 'n', '<leader>k',  ':NvimTreeClose<CR>:bnext<CR>zz' },
    { 'n', '<leader>j',  ':NvimTreeClose<CR>:bprevious<CR>zz' },

    { 'n', '<leader>q',  ':NvimTreeClose<CR>:q<CR>' },
    { 'n', '<leader>wq', ':NvimTreeClose<CR>:wq<CR>' },

    --⚫️ Function_keys
    { 'n', '<F1>',       ':NvimTreeFindFileToggle!<CR>' },
}

for _, mapping in ipairs(mappings) do
    vim.api.nvim_set_keymap(mapping[1], mapping[2], mapping[3], { noremap = true, silent = true })
end

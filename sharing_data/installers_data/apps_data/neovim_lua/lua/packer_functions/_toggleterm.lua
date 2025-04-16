--🟩 [toggleterm]

--⚪️ General
local function disable_cursorline()
    vim.wo.cursorline = false
end

require("toggleterm").setup {
    shell = 'pwsh.exe -NoLogo',
    on_open = function(term)
        disable_cursorline()
    end,
    direction = 'horizontal',
    size = 12,
}
------------------------------
--⚪️ Mappings
vim.api.nvim_set_keymap('n', '<C-`>', ':ToggleTerm<CR>', { noremap = true, silent = true })

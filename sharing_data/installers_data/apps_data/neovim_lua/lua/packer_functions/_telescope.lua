--🟩 [telescope]

--⚪️ General.telescope
require('telescope').setup {
    defaults = {
        preview = false,
        mappings = {
            i = { --⚫️ Insert Mode
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
                ["<C-S-j>"] = function(prompt_bufnr)
                    local action_state = require('telescope.actions.state')
                    local current_picker = action_state.get_current_picker(prompt_bufnr)
                    for _ = 1, 5 do
                        current_picker:move_selection(1)
                    end
                end,
                ["<C-S-k>"] = function(prompt_bufnr)
                    local action_state = require('telescope.actions.state')
                    local current_picker = action_state.get_current_picker(prompt_bufnr)
                    for _ = 1, 5 do
                        current_picker:move_selection(-1)
                    end
                end,
            },
            n = { --⚫️ Normal Mode
                ["J"] = function(prompt_bufnr)
                    local action_state = require('telescope.actions.state')
                    local current_picker = action_state.get_current_picker(prompt_bufnr)
                    for _ = 1, 5 do
                        current_picker:move_selection(1)
                    end
                end,
                ["K"] = function(prompt_bufnr)
                    local action_state = require('telescope.actions.state')
                    local current_picker = action_state.get_current_picker(prompt_bufnr)
                    for _ = 1, 5 do
                        current_picker:move_selection(-1)
                    end
                end,
            },
        },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        },
        oldfiles = {
            theme = "dropdown",
        },
    },
}
------------------------------
--⚪️ Mappings
vim.api.nvim_set_keymap('n', '<C-o>', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope find_files<CR>', { noremap = true, silent = true })
------------------------------
--⚪️ Function
--⚫️ Open file, then sync directory that contains that file
local function is_toggleterm_buffer() --⚫️ Check ToggleTerm
    local buftype = vim.api.nvim_buf_get_option(0, 'buftype')
    return buftype == 'terminal'
end

if vim.fn.has('win32') == 1 then --⚫️ Skip ToggleTerm
    vim.api.nvim_create_autocmd('BufEnter', {
        pattern = '*',
        callback = function()
            if not is_toggleterm_buffer() then
                vim.cmd('lcd %:p:h')
            end
        end
    })
end

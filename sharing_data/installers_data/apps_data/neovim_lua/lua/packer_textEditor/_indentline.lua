--🟩 [indentline]

--⚪️ Highlight
local highlightindent = {
    "indent",
}
local highlightscope = {
    "scope",
}
local hooks = require( "ibl.hooks" )

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "indent", { fg = "#808080" })
    vim.api.nvim_set_hl(0, "scope", { fg = "#808080" })
end)

require 'ibl'.setup {
    indent = {
        char = '¦', --⚫️ Symbols
        highlight = highlightindent,
    },
    scope = {
        highlight = highlightscope,
    }
}

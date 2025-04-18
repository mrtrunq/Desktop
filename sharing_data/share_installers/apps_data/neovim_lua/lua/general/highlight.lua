--🟩 [Highlight]

local highlightGroups = {

    --⚫️ Telescope
    TelescopeBorder = { fg = '#C0C0C0' },
    elescopeSelection = { fg = '#FFD766' },
    TelescopePromptCounter = { fg = '#FFD766' },
    TelescopeMatching = { fg = '#FF0000' },
    TelescopeResultsNormal = { fg = '#FFFFFF' },
    TelescopePromptPrefix = { fg = '#FFD766' },
    TelescopePromptNormal = { fg = '#FF0000' },

    --⚫️ Barbar
    BufferTabpageFill = { bg = '#282A36' },
    BufferCurrentSign = { fg = '#4BACDC' },
    BufferCurrent = { fg = '#4BACDC' },
    BufferInactive = { fg = '#777777' },
    BufferCurrentMod = { fg = '#FFD766' },
    BufferVisible = { bg = '#21222C' },

    --⚫️ NvimTree
    NvimTreeRootFolder = { fg = '#C0C0C0' },
    NvimTreeNormal = { bg = '#21222C' },
    NvimTreeCursorLine = { bg = '#44475A' },
    NvimTreeIndentMarker = { fg = '#FFD766' },
}

for group, colors in pairs(highlightGroups) do
    vim.api.nvim_set_hl(0, group, colors)
end

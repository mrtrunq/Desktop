--🟩 [lspconfig.lua-language-server(scoop)]

--⚪️ General
require('lspconfig').lua_ls.setup {
    settings = {
        Lua = {
            format = {
                enable = true,
            },
            diagnostics = {
                globals = { 'vim' },
            },
        },
        telemetry = {
            enable = false,
        },
    },
}

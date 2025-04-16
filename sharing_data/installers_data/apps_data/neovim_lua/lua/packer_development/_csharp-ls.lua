--🟩 [csharp-language-server]

--⚪️ General
require('lspconfig').csharp_ls.setup {
    filetypes = { "cs" },
    root_dir = require('lspconfig').util.root_pattern("*.csproj"),
    settings = {
        csharp = {
            formatting = {
                enable = true,
            },
        },
    },
    on_attach = function(client, bufnr)
        local keymaps = {
            { 'n', 'gd',          ':lua vim.lsp.buf.definition()<CR>' },
            { 'n', '<C-r>',       ':lua vim.lsp.buf.references()<CR>' },
            { 'n', '<C-S-Space>', ':lua vim.lsp.buf.signature_help()<CR>' },
            { 'i', '<C-S-Space>', ':lua vim.lsp.buf.signature_help()<CR>' },
            { 'n', '<C-k><C-i>',  ':lua vim.lsp.buf.hover()<CR>' },
        }
        local opts = { buffer = bufnr, noremap = true, silent = true, nowait = true }

        for _, keymap in pairs(keymaps) do
            vim.keymap.set(keymap[1], keymap[2], keymap[3], opts)
        end
    end,
}

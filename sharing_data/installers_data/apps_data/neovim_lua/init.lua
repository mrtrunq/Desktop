--🟩 [Installation]
require('packer').startup(function(use)
    --⚪️ General
    use 'wbthomason/packer.nvim'                                 --⚫️ Package management

    --⚪️ Text.Editor
    use 'tpope/vim-surround'                                     --⚫️ Surround = S(vi), cs, ds
    use 'terryma/vim-multiple-cursors'                           --⚫️ <C-S-d>, <C-S-l>
    use 'petertriho/nvim-scrollbar'                              --⚫️ Scroll bar
    use 'lukas-reineke/indent-blankline.nvim'                    --⚫️ Indent line
    use 'jiangmiao/auto-pairs'                                   --⚫️ Bracket {}
    use 'kevinhwang91/nvim-ufo'
    use 'kevinhwang91/promise-async'

    --⚪️ Colors
    use 'norcalli/nvim-colorizer.lua'                            --⚫️ Color code #FF0000
    use 'nvim-tree/nvim-web-devicons'                            --⚫️ Icon { NvimTree, Barbar }
    use 'lewis6991/gitsigns.nvim'                                --⚫️ For git status
    use 'romgrk/barbar.nvim'                                     --⚫️ Tab bar
    use 'nvim-lualine/lualine.nvim'                              --⚫️ Status bar
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } --⚫️ Parser
    use 'Mofiqul/vscode.nvim'                                    --⚫️ Theme

    --⚪️ Functions
    use 'nvim-tree/nvim-tree.lua'                                --⚫️ NvimTree
    use 'nvim-lua/plenary.nvim'                                  --⚫️ Support { Telescope }
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.8' }       --⚫️ Find
    use { 'akinsho/toggleterm.nvim', tag = '*' }                 --⚫️ Terminal

    --⚪️ Devlopment
    use 'hrsh7th/nvim-cmp'                                       --⚫️ Auto complettion(main)
    use 'hrsh7th/cmp-buffer'                                     --⚫️ Auto complettion(buffer)
    use 'hrsh7th/cmp-path'                                       --⚫️ Auto complettion(path)
    use 'hrsh7th/cmp-cmdline'                                    --⚫️ Auto complettion(command)

    use 'hrsh7th/cmp-nvim-lsp'                                   --⚫️ LSP Auto complettion
    use 'neovim/nvim-lspconfig'                                  --⚫️ LSP configuration
    use 'williamboman/mason.nvim'                                --⚫️ Code engine

    use { "L3MON4D3/LuaSnip", tag = "v2.*" }                     --⚫️ Snippet
    use 'saadparwaiz1/cmp_luasnip'                               --⚫️ Auto complettion(snippet)
end)
------------------------------
--🟩 [Split]

local modules = {
    --⚫️ General.Split
    'General/scheme', --🔺 First step
    'General/basic',
    'General/command',
    'General/gui',
    'General/highlight',
    'General/mappings',

    --⚫️ Packer.Colors.Split
    'Packer-Colors/_colorizer',
    'Packer-Colors/_lualine',
    'Packer-Colors/_nvim-treesitter',

    --⚫️ Packer.Devlopment.Split
    'Packer-Development/_cmp-nvim-lsp',
    'Packer-Development/_lua-ls',
    'Packer-Development/_luasnip',
    'Packer-Development/_mason-nvim',
    'Packer-Development/_nvim-cmp',
    'Packer-Development/_csharp-ls',

    --⚫️ Packer.Function.Split
    'Packer-Functions/_nvim-tree',
    'Packer-Functions/_telescope',
    'Packer-Functions/_toggleterm',

    --⚫️ Packer.TextEditor.Split
    'Packer-TextEditor/_indentline',
    'Packer-TextEditor/_multiple-cursors',
    'Packer-TextEditor/_scrollbar',
    'Packer-TextEditor/_nvim-ufo',
}
vim.tbl_map(require, modules)

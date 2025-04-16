--🟩 [nvim-treesitter]

--⚪️ General
require 'nvim-treesitter.install'.compilers = { "gcc" }
--······························
require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "lua" , "c_sharp" },
    highlight = { enable = true },
    indent = { enable = true },
    fold = { enable = true }
}

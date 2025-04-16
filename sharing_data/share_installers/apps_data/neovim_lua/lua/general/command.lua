--🟩 [Command]

local commands = {
    S2 = ':%s/    /  /g',
    Json = ':%!jq .',
    Pl = 'PackerStatus',
    Ps = 'PackerSync',
    Path = 'echo expand(\'%:p\')',
    Rl = 'w | so %',
    Lua = function()
        vim.lsp.buf.format()
    end,
}

for cmd, cmd_str in pairs(commands) do
    vim.api.nvim_create_user_command(cmd, cmd_str, {})
end

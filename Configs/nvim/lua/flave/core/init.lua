require("flave.core.options")
require("flave.core.keymaps")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local yank_group = augroup('HighlightYank', {})
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

local save_group = augroup("SaveGroup", {})
autocmd('BufWritePre', {
    group = save_group,
    pattern = "*",
    command = [[%s/\s\+$//e]]
})

vim.filetype.add({
    extension = {
        vert = 'glsl',
        frag = 'glsl',
        wgsl= 'glsl',
    },
    pattern = {
        [".*/hypr/.*%.conf"] = "hyprlang"
    },
})

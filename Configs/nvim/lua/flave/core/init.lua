require("flave.core.options")
require("flave.core.keymaps")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local yank_group = augroup('highlightyank', {})
autocmd('textyankpost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'incsearch',
            timeout = 40,
        })
    end,
})

local save_group = augroup("savegroup", {})
autocmd('bufwritepre', {
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

vim.g.clipboard = {
  name = 'wslclipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -nologo -noprofile -c [console]::out.write($(get-clipboard -raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -nologo -noprofile -c [console]::out.write($(get-clipboard -raw).tostring().replace("`r", ""))',
  },
  cache_enabled = true,
}


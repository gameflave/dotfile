vim.cmd("let g:netrw_liststyle = 0")
vim.cmd([[let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro']])

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentations
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4 -- indentation
opt.expandtab = true
opt.smartindent = true

opt.wrap = false -- disable line wrapping on long lines

-- search settings
opt.ignorecase = true
opt.smartcase = true -- assume case-sensitive search when including mixed case in search

opt.termguicolors = true
opt.background = "dark" -- colorschemes will select dark version over light version
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start" -- define what backspace can delete

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- new split window default location
opt.splitright = true
opt.splitbelow = true

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.scrolloff = 8

opt.updatetime = 50


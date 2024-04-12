vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true -- If you include a mixed case search query case sensitivity will be turned back on

opt.cursorline = true

-- Turn on terminal colours
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace options
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

-- Global
opt.clipboard:append("unnamedplus") -- Use the system clipboard as the default register

-- Windowing
opt.splitright = true -- Split vertical window to the right
opt.splitbelow = true -- Split horizontal window to the bottom


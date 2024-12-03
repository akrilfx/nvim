
-- Shortcut to set options
local opt = vim.opt

opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.backspace = { "indent", "eol", "start" }

-- Custom line
opt.list = true
-- opt.listchars = { tab = "→", eol = "¬", space = "⋅", trail = "·", nbsp = "%" }
-- opt.listchars = { tab = "→" }

opt.wrap = true


opt.cursorline = true
opt.cursorcolumn = true

-- Tabs
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

-- Search
opt.showmatch = true
opt.incsearch = true
opt.hlsearch = true

-- Split
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


-- Line number
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.backspace=indent,eol,start

-- Autoread (reload files changed outside of vim)
vim.opt.autoread = true

-- Turn on list characters
vim.opt.list = true

-- Wrap
vim.opt.wrap = true

vim.opt.title = true
vim.opt.clipboard = 'unnamed'
-- vim.opt.colorcolumn = 80
vim.opt.cursorline = true

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true

-- Tab settings
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Status bar
vim.opt.laststatus = 2

-- Search
vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Leader
vim.g.mapleader = " "

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1


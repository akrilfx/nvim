
-- Using pcall will avoid crashing
vim.g.mapleader = " "

pcall(require, 'options')
pcall(require, 'plugins')
pcall(require, 'utils')
pcall(require, 'mappings')


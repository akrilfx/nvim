-- plugins.lua

-- Plugins system using vim-plug
vim.cmd[[
call plug#begin()

Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

colorscheme onedark
]]

-- Plugins settings
require("nvim-tree").setup({
  sort_by = "name",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

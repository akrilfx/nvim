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

Plug 'tpope/vim-surround'

Plug 'm4xshen/autoclose.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

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


-- blankline
require("indent_blankline").setup({
    -- for example, context is off by default, use this to turn it on
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
})


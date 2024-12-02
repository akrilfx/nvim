-- Using treesitter, code highlighting and indent
return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = true,
  event = "VeryLazy",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "html", "python" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
    })
  end
}

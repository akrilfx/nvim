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
        rainbow = {
          enable = true,
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
        },
        ensure_installed = { "c", "lua", "vim", "vimdoc", "html", "python" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
    })
  end
}

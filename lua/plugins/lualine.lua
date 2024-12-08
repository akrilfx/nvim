return
{
    'nvim-lualine/lualine.nvim',
    lazy = true,
    event = "VeryLazy",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require("lualine").setup()
        options = {
          icons_enabled = true,
          theme = "auto",
        }
    end
}

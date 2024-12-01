return {
  {
    "catppuccin/nvim",
    lazy = false,
    enable = true,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
    end
  },
}

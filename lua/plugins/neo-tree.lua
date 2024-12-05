return
{
  "nvim-neo-tree/neo-tree.nvim",
  enable = true,
  lazy = true,
  event = "VeryLazy",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = {
    -- {"<leader>n", "<cmd>Neotree filesystem reveal<cr>", desc = "Display Neotree"}
    {"<leader>n", "<cmd>Neotree toggle<cr>", desc = "Neotree"}
  }
}


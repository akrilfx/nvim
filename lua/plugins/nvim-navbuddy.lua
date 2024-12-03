return {
    "neovim/nvim-lspconfig",
    enabled = true,
    lazy = true,
    even = "VeryLazy",
    dependencies = {
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        }
    },
    -- your lsp config or other stuff
}

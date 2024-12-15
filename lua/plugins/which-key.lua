return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    lazy = true,
    cmd = "WhichKey",
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    opts = {
        preset = "helix",
        delay = 0,
        win = {
            height = {
                max = math.huge,
            },
        },
        plugins = {
            spelling = {
                enabled = true,
            },
        },
        icons = {
            rules = false,
            breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
            separator = "󱦰 ", -- symbol used between a key and it's label
            group = "󰹍 ", -- symbol prepended to a group
        },
        spec = {
            -- { "g",         group = "goto" },
            { "z",         group = "fold" },
            { "<leader>c", group = "code" },
            { "<leader>d", group = "debug" },
            { "<leader>f", group = "find" },
            { "<leader>g", group = "git" },
            { "<leader>l", group = "lazy" },
            { "<leader>q", group = "quit/session" },
            { "<leader>t", group = "telescope" },
        },
    },
}

return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = false },
            dashboard = {
                enabled = true,
                sections = {
                    { section = "header" },
                    {
                        pane = 2,
                        section = "terminal",
                        -- cmd = "colorscript -e square",
                        cmd = "curl \"wttr.in/Montpellier?0Q\"",
                        height = 5,
                        padding = 1,
                    },
                    { section = "keys", gap = 1, padding = 1 },
                    { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
                    { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
                    {
                        pane = 2,
                        icon = " ",
                        title = "Git Status",
                        section = "terminal",
                        enabled = function()
                            return Snacks.git.get_root() ~= nil
                        end,
                        cmd = "git status --short --branch --renames",
                        height = 5,
                        padding = 1,
                        ttl = 5 * 60,
                        indent = 3,
                    },
                    { section = "startup" },
                },

            },

            git = { enabled = true },
            gitbrowse = { enabled = true },

            -- using hlchunk
            indent = { enabled = false },
            input = { enabled = false },

            -- Lazygit
            lazygit = {
                enabled = true,
                win = {
                    style = "lazygit",
                },
            },

            notifier = { enabled = false },
            quickfile = { enabled = false },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            terminal = { enabled = true },
            words = { enabled = false },
        },

        keys = {
            { "<leader>x",  function() Snacks.bufdelete() end,      desc = "Delete Buffer" },
            { "<leader>gB", function() Snacks.gitbrowse() end,      desc = "Git Browse" },
            { "<leader>gb", function() Snacks.git.blame_line() end, desc = "Git Blame Line" },
            { "<leader>lg", function() Snacks.lazygit() end,        desc = "Lazygit" },
            { "<c-/>",      function() Snacks.terminal() end,       desc = "Toggle Terminal" },
            { "<c-_>",      function() Snacks.terminal() end,       desc = "which_key_ignore" },
        }
    }
}

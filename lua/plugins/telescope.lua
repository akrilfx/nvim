-- Fuzzy finder
return
{
    {
        'nvim-telescope/telescope-ui-select.nvim',
        lazy = true,
        event = "VeryLazy",
        opts = {}
    },

    {
        "nvim-telescope/telescope-file-browser.nvim",
        lazy = true,
        event = "VeryLazy",
        dependencies = {
            event = "VeryLazy",
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        }
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        lazy = true,
        event = "VeryLazy",
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
            },
        },
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")

            -- telescope.load_extension('fzf')

            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Buffers (Telescope)' })
            vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Help tags (Telescope)' })

            vim.keymap.set('n', '<leader>tl', builtin.live_grep, { desc = 'Live grep (Telescope)' })
            vim.keymap.set('n', '<leader>tg', builtin.git_files, { desc = 'Git files (Telescope)' })
            vim.keymap.set('n', '<leader>tr', builtin.registers, { desc = 'Registers (Telescope)' })
            vim.keymap.set('n', '<leader>tt', "<cmd>Telescope treesitter<cr>", { desc = 'Telescope treesitter' })
            vim.keymap.set('n', '<leader>ts', builtin.lsp_document_symbols, { desc = 'Telescope LSP Document Symbols' })

            vim.keymap.set("n", "<leader>fb", telescope.extensions.file_browser.file_browser,
                { desc = "Telescope File Browser" })
        end
    }
}

return {
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        event = "VeryLazy",
        version = "*",
        -- dependencies = "nvim-tree/nvim-web-devicons",

        keys = {
            -- { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle Pin" },
            -- { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
            -- { "<leader>br", "<Cmd>BufferLineCloseRight<CR>",           desc = "Delete Buffers to the Right" },
            -- { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",            desc = "Delete Buffers to the Left" },
            { "<S-h>",   "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<S-l>",   "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            { "<Tab>",   "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<S-Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            -- { "[B",         "<cmd>BufferLineMovePrev<cr>",             desc = "Move buffer prev" },
            -- { "]B",         "<cmd>BufferLineMoveNext<cr>",             desc = "Move buffer next" },
        },

        opts = {
            options = {
                mode = "buffers", -- set to "tabs" to only show tabpages instead

                separator_style = "padded_slant",
                buffer_close_icon = '󰅖',

                truncate_names = false, -- whether or not tab names should be truncated
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-tree (File Explorer)",
                        text_align = "center",
                        highlight = "Directory",
                        separator = true
                    }
                },

                indicator = { style = "underline" },
                -- numbers = function(opts)
                --     return string.format('%s|%s', opts.id, opts.raise(opts.ordinal))
                -- end,
            }
        },
    }
}

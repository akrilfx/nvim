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
      tag = '0.1.8',
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
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'Telescope find files'})
        vim.keymap.set('n', '<leader>g', builtin.live_grep, {desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>b', builtin.buffers, {desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>h', builtin.help_tags, {desc = 'Telescope help tags' })

        vim.keymap.set('n', '<leader>tg', builtin.git_files, {desc = 'Telescope git files' })
        vim.keymap.set('n', '<leader>tr', builtin.registers, {desc = 'Telescope registers' })
        vim.keymap.set('n', '<leader>tt', "<cmd>Telescope treesitter<cr>", {desc = 'Telescope treesitter' })
        vim.keymap.set('n', '<leader>ts', builtin.lsp_document_symbols, {desc = 'Telescope LSP Document Symbols' })

        vim.keymap.set("n", "<leader>fb", telescope.extensions.file_browser.file_browser, { desc = "Telescope File Browser"} )
      end
    }
}

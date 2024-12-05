return {
    -- Mason
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    -- Mason lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ruff",
                }
            })
        end
    },
    -- Nvim lspconfig (communication between Nvim and Language Server)
    {
        "neovim/nvim-lspconfig",
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
        config = function()
            -- Navbuddy config
            local navbuddy = require("nvim-navbuddy")
            require("lspconfig").clangd.setup {
                on_attach = function(client, bufnr)
                    navbuddy.attach(client, bufnr)
                end
            }

            -- LSP Config
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ruff.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

        end
    }

}

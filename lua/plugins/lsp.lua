return {
    -- Mason
    {
        "williamboman/mason.nvim",
        lazy = true,
        enabled = true,
        keys = {
            { "<leader>m", "<cmd>Mason<cr>", desc = "Mason" },
        },
        opts = {
            ensure_installed = {
                -- Lua
                "lua_ls",

                -- Python
                "debugpy",
                "black",
                "mypy",
                "pyright",
                "ruff",
            },
        },
        config = function()
            require('mason').setup()
        end,
    },

    -- Mason lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        enabled = true,
        config = true,
    },

    -- Nvim lspconfig (communication between Nvim and Language Server)
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        enabled = true,
        config = function()
            -- Capabilities
            local capabilities = vim.lsp.protocol.make_client_capabilities()

            -- LSP Config
            local lspconfig = require("lspconfig")

            -- Lua setup
            lspconfig.lua_ls.setup({})

            -- Pyright setup
            lspconfig.pyright.setup({
                capabilities = capabilities,
                filetypes = { "python" },
                settings = {
                    pyright = {
                        -- Using Ruff"s import organizer
                        disableOrganizeImports = true,
                    },
                    python = {
                        analysis = {
                            -- Ignore all files for analysis to exclusively use Ruff for linting
                            ignore = { "*" },
                        },
                    },
                },
            })

            -- Ruff setup
            lspconfig.ruff.setup({
                trace = "messages",
                init_options = {
                    settings = {
                        -- Ruff language server settings go here
                        logLevel = "debug",
                    },
                },
            })

            -- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/configs/lspconfig.lua
            local function desc(txt)
                return { desc = "LSP " .. txt }
            end
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename Symbol" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to definition" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to declaration" })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to implementation" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "LSP Show references" })

            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code action" })
            vim.keymap.set("n", "<C-F>", vim.lsp.buf.format, { desc = "LSP Code format" })
        end,
    },
}

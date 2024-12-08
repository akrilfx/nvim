return {
	-- Mason
	{
		"williamboman/mason.nvim",
		lazy = true,
		config = function()
			require("mason").setup()
		end,
	},
	-- Mason lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
        lazy = true,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ruff",
				},
			})
		end,
	},
	-- Nvim lspconfig (communication between Nvim and Language Server)
	{
		"neovim/nvim-lspconfig",
        lazy = true,
		dependencies = {
			{
				"SmiteshP/nvim-navbuddy",
				dependencies = {
					"SmiteshP/nvim-navic",
					"MunifTanjim/nui.nvim",
				},
				opts = {
					lsp = { auto_attach = true },
					window = { border = "double" },
					-- mappings = {
					--     ["<Down>"] = require("nvim-navbuddy.actions").next_sibling(), -- down
					--     ["<Up>"] = require("nvim-navbuddy.actions").previous_sibling(), -- up
					--     ["<Left>"] = require("nvim-navbuddy.actions").parent(), -- Move to left panel
					--     ["<Right>"] = require("nvim-navbuddy.actions").children(), -- Move to right panel
					--     ["<PageDown>"] = require("nvim-navbuddy.actions").root(), -- Move to first panel
					-- },
				},
			},
		},
		config = function()
			-- Navbuddy config
			local navbuddy = require("nvim-navbuddy")
			require("lspconfig").clangd.setup({
				on_attach = function(client, bufnr)
					navbuddy.attach(client, bufnr)
				end,
			})

			-- LSP Config
			local lspconfig = require("lspconfig")
			-- Lua setup
			lspconfig.lua_ls.setup({})

			-- Pyright setup
			lspconfig.pyright.setup({
				settings = {
					pyright = {
						-- Using Ruff's import organizer
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

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Code Hover" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Code definition" })
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Code declaration" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code acntion using LSP" })

			vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Code format using LSP" })
			vim.keymap.set("n", "<C-F>", vim.lsp.buf.format, { desc = "Code format using LSP" })
		end,
	},
}

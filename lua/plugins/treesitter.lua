-- add more treesitter parsers
return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			"bash",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"regex",
			"rust",
			"tsx",
			"vim",
			"yaml",
		},
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	},
}

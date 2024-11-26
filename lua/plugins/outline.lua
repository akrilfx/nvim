return {
	"hedyhli/outline.nvim",
	lazy = true,
	event = "VeryLazy",
	cmd = { "Outline", "OutlineOpen" },
	keys = { -- Example mapping to toggle outline
		{ "<leader>o", "<cmd>Outline!<CR>", desc = "Toggle outline" },
	},
	opts = {
		-- Your setup opts here
	},
}

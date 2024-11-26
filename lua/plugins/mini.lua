return {
	"echasnovski/mini.nvim",
	version = false,
	lazy = true,
	event = "VeryLazy",
	config = function()
		-- Comment
		require("mini.comment").setup({
			mappings = {
				comment_visual = "gc",
				comment_line = "gc",
			},
		})

		-- Icons
		require("mini.icons").setup()

		-- Surround
		require("mini.surround").setup()

		-- Tab
		require("mini.tabline").setup({
			show_icons = true,
		})

		-- Trailspace
		require("mini.trailspace").setup()
	end,
}

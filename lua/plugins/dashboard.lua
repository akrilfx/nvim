return {
	"nvimdev/dashboard-nvim",
    lazy = true,
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
		})
	end,
	dependencies = { { "echasnovski/mini.icons", version = false }},
}

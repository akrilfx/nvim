-- the opts function can also be used to change the default opts:
return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	lazy = true,
	opts = function()
		return {
			--[[add your custom lualine config here]]
		}
	end,
}

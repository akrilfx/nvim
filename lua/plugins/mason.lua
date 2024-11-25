-- add any tools you want to have installed below
return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"black",
			"stylua",
			"shellcheck",
			"shfmt",
			--"flake8",
			"python",
			"ruff",
		},
	},
}

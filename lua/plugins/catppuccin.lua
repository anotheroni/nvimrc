return {
	-- Color scheme
	"catppuccin/nvim",
	lazy = false,
	as = "catppuccin",
	config = function()
		vim.cmd.colorscheme "catppuccin"
	end
}

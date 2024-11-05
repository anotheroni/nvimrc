return {
	--Higlighting and indenting
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			-- Automatically install needed support
			auto_install = true,
			--ensure_installed = { "c", "lua", "vim", "vimdoc", "python" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}

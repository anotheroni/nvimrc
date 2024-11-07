return {
	-- null-ls replacement
	-- all names are unchanged uses null-ls instead of none-ls
	'nvimtools/none-ls.nvim',
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- C
				null_ls.builtins.formatting.clang_format,
				-- lua
				null_ls.builtins.formatting.stylua,
				-- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
		})

		vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = "null-ls: [G]lobal [F]ormat" })
	end
}

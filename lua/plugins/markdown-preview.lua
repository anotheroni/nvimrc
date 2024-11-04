return {
  -- Preview markdown live in web browser
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>")
}

return {
	-- Tmux and neovim integration, i.e. move easily between panes
	"christoomey/vim-tmux-navigator",
	vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { desc = "TMUX: Move focus to the left window" }),
	vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { desc = "TMUX: Move focus to the lower window" }),
	vim.keymap.set("n", "<C-l>", ":TmuxNavigateUp<CR>", { desc = "TMUX: Move focus to the right window" }),
	vim.keymap.set("n", "<C-k>", ":TmuxNavigateRight<CR>", { desc = "TMUX: Move focus to the upper window" }),
}

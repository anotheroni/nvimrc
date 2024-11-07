vim.g.mapleader = " "

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.api.nvim_set_keymap("n", "<leader><leader>term", ':belowright split | terminal<CR>',
    {noremap = true, silent=true})

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
--  Use wincmd to be compatible with vim-tmux-navigator
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { desc = 'Move focus to the upper window' })

# Neovim / Nvim

My configuration for Neovim / Nvim using Lazy as package manger

## Dependencies

For treesitter: ripgrep

For Python debugging: debugpy (see plugins/debuging.lus)

For C LSP: clangd

## Tmux integration

To use custom tmux config create a link from ~
 ln -s .config/nvim/.tmux.conf .tmux.conf

The config uses <C-s> as leader

Tmux uses tpm package manager, install plugins with command <leader>I

## Tips

To change formating used by clang-format create a .clang-format file in src
  nvim/mason/bin/clang-format --style GNU --dump-config > .clang-format

## Vim commands

* :w !sudo tee %    -- Save a protected file
* :reg    -- print content of all registers

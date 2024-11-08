# Neovim / Nvim

My configuration for Neovim / Nvim using Lazy as package manger

## Dependencies

For treesitter: ripgrep

For Python debugging: debugpy (see plugins/debuging.lus)

For C LSP: clangd

## Vim commands

* :w !sudo tee %    -- Save a protected file
* :reg    -- print content of all registers

## Tmux integration

To use custom tmux config create a link from ~
 ln -s .config/nvim/.tmux.conf .tmux.conf

The config uses <C-s> as leader

Tmux uses tpm package manager, install plugins with command <leader>I

### Tmux Commands

* :select-pane -T newname       -- Give pane a new name

## Tips

To change formating used by clang-format create a .clang-format file in src
  nvim/mason/bin/clang-format --style GNU --dump-config > .clang-format


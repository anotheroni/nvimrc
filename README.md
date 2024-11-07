# Neovim / Nvim

My configuration for Neovim / Nvim using Lazy as package manger

## Dependencies

For treesitter: ripgrep

For Python debugging: debugpy (see plugins/debuging.lus)

For C LSP: clangd

## Tips

To change formating used by clang-format create a .clang-format file in src
  nvim/mason/bin/clang-format --style GNU --dump-config > .clang-format

## Vim commands

* :w !sudo tee %    -- Save a protected file
* :reg    -- print content of all registers

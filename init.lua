-- Sources:
--   https://github.com/nvim-lua/kickstart.nvim
--   https://www.youtube.com/watch?v=m8C0Cq9Uv9o
--   https://github.com/zazencodes/zazencodes-youtube/tree/main/src/neovim-lazy-ide-2024/.config/nvim
-- typecraft  https://www.youtube.com/watch?v=4zyZ3sw_ulc&list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&index=2

require("keymaps")
require("settings")

-- Lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- Install lazy if not installed
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- load all plugins in plugins directory
require("lazy").setup("plugins")

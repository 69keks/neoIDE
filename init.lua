-- Initialize lazy.nvim
require("config.lazy")

-- Set colorscheme and color variant
vim.o.background="dark"
vim.cmd("colorscheme tokyonight")

-- Additional config
require("vim-options")
require("config.keymaps")

local keymap = vim.keymap

-- Split config
keymap.set("n", "<leader>sv", "<C-wv>", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-ws>", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab config
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- NeoTree config
keymap.set("n", "<leader>ee", ":Neotree toggle filesystem reveal left<CR>", { desc = "Toggle file explorer" })

-- Telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files in cwd" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find string in cwd" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find files in open buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Show help tags" })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = "Search recent files" })

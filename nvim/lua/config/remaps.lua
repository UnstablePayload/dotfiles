-- Global Leader
vim.g.mapleader = " "

-- Shortcut for Explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Custom mappings for splits
vim.keymap.set("n", "<leader>sh", ":split<CR>",  { desc = "Split horizontally (below)" })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split vertically (right)" })

-- Shortcut Save File
vim.keymap.set("n", "<leader>w", ":w<CR>",       { desc = "Save file" })

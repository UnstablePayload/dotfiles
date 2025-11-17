-- Global Leader
vim.g.mapleader = " "

-- Shortcut for Explore
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Custom mappings for splits
vim.keymap.set("n", "<leader>sh", ":split<CR>",  { desc = "Split horizontally (below)" })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Split vertically (right)" })

-- Shortcut Save File
vim.keymap.set("n", "<leader>w", ":w<CR>",       { desc = "Save file" })


-- Clears search highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- jj becomes esc
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

-- Toggles Neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree" })

-- Toggle spellcheck
vim.keymap.set("n", "<leader>sp", ":setlocal spell! spelllang=en_us<CR>", { desc = "Toggle spell check" })

-- Project search (including hidden files)
vim.keymap.set("n", "<leader>fa", ":Telescope find_files hidden=true no_ignore=true<CR>", { desc = "Find all files" })

-- Grep current word
vim.keymap.set("n", "<leader>fw", ":Telescope grep_string<CR>", { desc = "Grep word under cursor" })

-- Compiles and runs C++ code in a temp binary so it doesnt clutter directory
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")  -- save the file
  vim.cmd("split | terminal g++ -std=c++17 -o /tmp/a.out % && /tmp/a.out")
end, { desc = "Compile and run C++ in terminal" })

-- Runs python code
vim.keymap.set("n", "<leader>p", function()
  vim.cmd("w")  -- Save file
  vim.cmd("split | terminal python3 %")
end, { desc = "Run Python file in terminal" })


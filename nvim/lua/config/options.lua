-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable Split Screens
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.breakindent = true

vim.opt.signcolumn = 'yes'


-- Tab Configs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Auto Indenting
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.smartindent = true

-- Persistent Undo
vim.opt.undofile = true

-- Incremental Search
vim.opt.incsearch = true

-- Case-Insensitive Search Unless Capital Letters Are Used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Keep 5  lines above and below the cursor when scrolling
vim.opt.scrolloff = 5

-- Enable Virtual Editing in Visual Block Mode
vim.opt.virtualedit = 'block'

-- Enable Incremental Command Preview
vim.opt.inccommand = 'nosplit'

-- Markdown Conceallevel
vim.opt.conceallevel = 2

-- Highlighing and Yanking
vim.opt.cursorline = true
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
  desc = 'Hightlight selection on yank',
  callback = function()
    vim.hl.on_yank{ timeout = 1000} 
  end,
})

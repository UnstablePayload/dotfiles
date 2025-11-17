-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    dependencies = {
      -- any extra TS modules you use, e.g.:
      -- 'nvim-treesitter/nvim-treesitter-textobjects',
    },
    -- First set prefer_git before Treesitter tries to install parsers:
    config = function(_, opts)
      require("nvim-treesitter.install").prefer_git = true
      require("nvim-treesitter.configs").setup(opts)
    end,
    opts = {
      -- A list of parser names, or "all"
      ensure_installed = {
        "c", "lua", "vim", "vimdoc",
        "query", "markdown", "markdown_inline", "python"
      },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
      -- Automatically install missing parsers when entering buffer
      auto_install = true,
      -- Parsers to skip
      ignore_install = { "javascript" },

      highlight = {
        enable = true,
        -- Disable for these languages
        disable = { "c", "rust" },
        -- Or disable on large files
        disable = function(lang, buf)
          local max_filesize = 100 * 1024  -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat,
                                  vim.api.nvim_buf_get_name(buf))
          return ok and stats and stats.size > max_filesize
        end,
        -- Don’t duplicate with Vim regex highlighting
        additional_vim_regex_highlighting = false,
      },
    },
  },
}

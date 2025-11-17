--  -- ~/.config/nvim/lua/plugins/theme.lua
return {
  "catppuccin/nvim",            -- make sure you’ve installed the plugin itself
  name = "catppuccin",
  lazy = false,                 -- load immediately
  priority = 1000,              -- load before other colorschemes
  config = function()
    -- call setup with a single table literal; note the braces line up exactly
    require("catppuccin").setup {
      flavour               = "mocha",
      background            = { light = "latte", dark = "mocha" },
      transparent_background= true,

      show_end_of_buffer    = false,
      term_colors           = false,
      dim_inactive          = { enabled = false, shade = "dark", percentage = 0.15 },
      no_italic             = false,
      no_bold               = false,
      no_underline          = false,
      styles = {
        comments     = { "italic" },
        conditionals = { "italic" },
        loops        = {},
        functions    = {},
        keywords     = {},
        strings      = {},
        variables    = {},
        numbers      = {},
        booleans     = {},
        properties   = {},
        types        = {},
        operators    = {},
      },
      color_overrides      = {},
      custom_highlights    = {},
      default_integrations = true,
      integrations = {
        cmp        = true,
        gitsigns   = true,
        nvimtree   = true,
        treesitter = true,
        notify     = false,
        mini = {
          enabled            = true,
          indentscope_color  = "",
        },
      },
    }  -- <––– closes the setup{ … } call

    -- now actually apply the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}

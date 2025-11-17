return {
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    build = "make install_jsregexp",
    config = function()
      local ls = require("luasnip")
      local s  = ls.snippet
      local i  = ls.insert_node
      local f  = ls.function_node
      local fmt = require("luasnip.extras.fmt").fmt

      ls.add_snippets("markdown", {
        s("meeting", fmt([[
# {}
Date: {}

***Attendees***
{}


***Notes***
{}


***Action Items***
{}


]], {
          i(1, "Heading"),
          f(function() return os.date("%Y-%m-%d %H:%M") end),
          i(2, ""),
          i(3, ""),
          i(4, ""),
        }))
      })

      -- Tab: expand or jump forward
      vim.keymap.set({ "i", "s" }, "<Tab>", function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end, { desc = "LuaSnip: Expand or jump" })

      -- Shift-Tab: jump backward
      vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { desc = "LuaSnip: Jump backward" })
    end,
  },
}

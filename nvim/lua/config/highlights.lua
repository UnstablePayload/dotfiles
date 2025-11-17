function setup_render_markdown_highlights()
    vim.api.nvim_set_hl(0, 'RenderMarkdownOnHold', { fg = '#fabd2f', bg = nil, bold = true }) -- Orange
    vim.api.nvim_set_hl(0, 'RenderMarkdownInProgress', { fg = '#d438ff', bg = nil, italic = true }) -- Purple
    vim.api.nvim_set_hl(0, 'RenderMarkdownOptimize', { fg = '#8ec07c', bg = nil, bold = true }) -- Green
    vim.api.nvim_set_hl(0, 'RenderMarkdownDebug', { fg = '#fb4934', bg = nil, bold = true }) -- Red
    vim.api.nvim_set_hl(0, 'RenderMarkdownExampleCode', { fg = '#8ec07c', bg = nil, italic = true }) -- Green (Unchanged)
end

setup_render_markdown_highlights()

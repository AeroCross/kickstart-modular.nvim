return {
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = true,
        styles = {
          comments = { 'italic' },
          functions = { 'italic' },
          keywords = { 'bold' },
          variables = { 'italic' },
        },
        no_italic = true,
        default_highlights = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          telescope = true,
          treesitter = true,
          lsp_trouble = true,
          lsp_saga = true,
          nvimtree = true,
          which_key = true,
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et

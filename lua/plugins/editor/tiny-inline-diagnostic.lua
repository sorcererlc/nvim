return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'VeryLazy', -- Or `LspAttach`
  priority = 1000, -- needs to be loaded in first
  config = function()
    require('tiny-inline-diagnostic').setup {
      preset = 'powerline',
      options = {
        show_source = {
          enabled = true,
          if_many = false,
        },
        use_icons_from_diagnostic = true,
        multilines = {
          enabled = true,
        },
        break_line = {
          enabled = true,
          after = 50,
        },
      },
    }
    vim.diagnostic.config { virtual_text = false } -- Only if needed in your configuration, if you already have native LSP diagnostics
  end,
}

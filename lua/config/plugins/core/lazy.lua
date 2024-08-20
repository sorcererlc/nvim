return {
  -- Editor
  require 'plugins.editor.vim_sleuth',
  require 'plugins.editor.whichkey',
  require 'plugins.editor.mini',
  require 'plugins.editor.todo_comments',
  require 'plugins.editor.comment',
  require 'plugins.editor.ts_context_commentstring',
  require 'plugins.editor.bigfile',
  require 'plugins.editor.session_manager',
  require 'plugins.editor.nvim_treesitter',

  -- UI
  require 'plugins.ui.themes.catppuccin',
  require 'plugins.ui.indent_line',
  require 'plugins.ui.nvim_tree',
  require 'plugins.ui.nvim_colorizer',
  require 'plugins.ui.dashboard_nvim',
  require 'plugins.ui.lualine',
  -- require 'plugins.ui.tabby',
  require 'plugins.ui.bufferline',

  -- LSP
  require 'plugins.lsp.lazydev',
  require 'plugins.lsp.luvit_meta',
  require 'plugins.lsp.nvim_lspconfig',

  -- Find
  require 'plugins.find.nvim_telescope',

  -- Completion
  require 'plugins.completion.nvim_cmp',
  require 'plugins.completion.autopairs',

  -- Format
  require 'plugins.format.conform',

  -- Lint
  -- require 'plugins.lint.lint',

  -- VCS
  require 'plugins.vcs.gitsigns',
  require 'plugins.vcs.neogit',

  -- Language support
  require 'plugins.language.go',
  require 'plugins.language.rasi', -- Deprecated/Added to NeoVim. Remove after release.
}

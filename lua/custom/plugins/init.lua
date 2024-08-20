-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require 'custom.plugins.catppuccin',
  require 'custom.plugins.nvim_tree',
  require 'custom.plugins.nvim_colorizer',
  -- require 'custom.plugins.dashboard_nvim',
  require 'custom.plugins.tabby',
  require 'custom.plugins.session_manager',
  require 'custom.plugins.lualine',
  -- require 'custom.plugins.bufferline',
  require 'custom.plugins.neogit',
  require 'custom.plugins.go',
  -- require 'custom.plugins.supermaven',
  -- require 'custom.plugins.structlog',
  require 'custom.plugins.ts_context_commentstring',
  require 'custom.plugins.comment',
  -- require 'custom.plugins.schemastore',
  require 'custom.plugins.bigfile',
  require 'custom.plugins.rasi', -- Deprecated/Added to NeoVim. Remove after release.
}

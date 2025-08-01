local plugins = {
  -- Completion
  require 'plugins.completion.autopairs', -- auto insert paired characters
  require 'plugins.completion.blink_cmp', -- general completion plugin
  -- require 'plugins.completion.nvim_cmp', -- general completion plugin

  -- Editor
  require 'plugins.editor.bigfile', -- disable some NeoVim features for better big file handling
  require 'plugins.editor.comment', -- toggle comments for various languages
  require 'plugins.editor.flash', -- navigate files with search labels
  require 'plugins.editor.orgmode', -- Emacs-like orgmode
  require 'plugins.editor.session_manager', -- save NeoVim sessions per directory like VS Code
  require 'plugins.editor.sleuth', -- auto detect and set indentation style
  require 'plugins.editor.todo_comments', -- highlight various TODO, FIXME, etc comments
  require 'plugins.editor.treesitter', -- syntax highlighting
  require 'plugins.editor.trouble', -- display diagnostics, references, other lists
  require 'plugins.editor.ts_context_commentstring', -- set commentstring based on cursor position within a file
  require 'plugins.editor.whichkey', -- show available keybinds

  -- Find
  require 'plugins.find.harpoon', -- navigate files and locations with lists
  require 'plugins.find.nvim_telescope', -- find anything, anywhere

  -- Format
  require 'plugins.format.conform', -- code formatting via LSP

  -- Language support
  require 'plugins.language.go', -- go support
  -- require 'plugins.language.rasi', -- Deprecated/Added to NeoVim. Remove after release.

  -- LLM
  -- require 'plugins.llm.avante', -- LLM helper

  -- Lint
  require 'plugins.lint.lint', -- linter

  -- LSP
  require 'plugins.lsp.lazydev', -- faster LuaLS
  require 'plugins.lsp.luvit_meta', -- Luvit framework meta type definitions
  require 'plugins.lsp.nvim_lspconfig', -- quickstart for NeoVim LSP

  -- Editor
  require 'plugins.editor.tiny-inline-diagnostic', -- clean inline diagnostics

  -- Misc
  -- require 'plugins.misc.rest', -- REST client

  -- UI
  -- require 'plugins.ui.dashboard_nvim', -- boot dashboard
  require 'plugins.ui.indent_line', -- indentation guides
  require 'plugins.ui.lualine', -- status line
  require 'plugins.ui.mini', -- lua modules for a better NeoVim
  require 'plugins.ui.nvim_colorizer', -- highlights for stuff like hex color codes in CSS
  require 'plugins.ui.nvim_tree', -- file manager tree
  -- require 'plugins.ui.tabby', -- tabs
  require 'plugins.ui.themes.catppuccin', -- nice colors

  -- VCS
  require 'plugins.vcs.diffview', -- diff view, conflict resolution
  require 'plugins.vcs.gitsigns', -- live git decorations in buffers
  require 'plugins.vcs.neogit', -- visual git
  require 'plugins.vcs.git_blame', -- inline git blame
}

-- for _, v in ipairs(Config.plugins.env.load) do
--   table.insert(plugins, v)
-- end

return plugins

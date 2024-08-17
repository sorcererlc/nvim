local map = vim.keymap.set

-- Global tree toggle mapping
map('n', '<C-n>', '<Cmd>NvimTreeFocus<CR>', { desc = 'Focus Nvim-Tree' })
map('n', '<CA-n>', '<Cmd>NvimTreeFindFile<CR>', { desc = 'Find File in Tree' })

local function tree_attach(bufnr)
  local api = require 'nvim-tree.api'

  -- Default mappings
  api.config.mappings.default_on_attach(bufnr)

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- File preview
  local FloatPreview = require 'float-preview'
  FloatPreview.attach_nvimtree(bufnr)
  local close_wrap = FloatPreview.close_wrap

  -- Tree mappings
  map('n', '<C-t>', close_wrap(api.node.open.tab), opts 'Open: New Tab')
  map('n', '<C-v>', close_wrap(api.node.open.vertical), opts 'Open: Vertical Split')
  map('n', '<C-s>', close_wrap(api.node.open.horizontal), opts 'Open: Horizontal Split')
  map('n', '<Tab>', close_wrap(api.node.open.preview), opts 'Open')
  map('n', 'o', close_wrap(api.node.open.edit), opts 'Open')
  map('n', 'O', close_wrap(api.node.open.no_window_picker), opts 'Open: No Window Picker')
  map('n', 'a', close_wrap(api.fs.create), opts 'Create')
  map('n', 'd', close_wrap(api.fs.remove), opts 'Delete')
  map('n', 'r', close_wrap(api.fs.rename), opts 'Rename')
end

local function open_nvim_tree()
  -- open the tree
  require('nvim-tree.api').tree.open()
end

return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {
      'antosha417/nvim-lsp-file-operations',
      config = function()
        require('lsp-file-operations').setup {
          -- used to see debug logs in file `vim.fn.stdpath("cache") .. lsp-file-operations.log`
          debug = false,
          -- select which file operations to enable
          operations = {
            willRenameFiles = true,
            didRenameFiles = true,
            willCreateFiles = true,
            didCreateFiles = true,
            willDeleteFiles = true,
            didDeleteFiles = true,
          },
          -- how long to wait (in milliseconds) for file rename information before cancelling
          timeout_ms = 10000,
        }
      end,
    },
    'echasnovski/mini.base16',
    {
      'JMarkin/nvim-tree.lua-float-preview',
      lazy = true,
      -- default
      opts = {
        -- Whether the float preview is enabled by default. When set to false, it has to be "toggled" on.
        toggled_on = false,
        -- wrap nvimtree commands
        wrap_nvimtree_commands = true,
        -- lines for scroll
        scroll_lines = 20,
        -- window config
        window = {
          style = 'minimal',
          relative = 'win',
          border = 'rounded',
          wrap = false,
        },
        mapping = {
          -- scroll down float buffer
          down = { '<C-d>' },
          -- scroll up float buffer
          up = { '<C-e>', '<C-g>' },
          -- enable/disable float windows
          toggle = { '<C-x>' },
        },
        -- hooks if return false preview doesn't shown
        hooks = {
          pre_open = function(path)
            -- if file > 5 MB or not text -> not preview
            local size = require('float-preview.utils').get_size(path)
            if type(size) ~= 'number' then
              return false
            end
            local is_text = require('float-preview.utils').is_text(path)
            return size < 5 and is_text
          end,
          post_open = function(bufnr)
            return true
          end,
        },
      },
    },
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 50,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      on_attach = tree_attach,
    }
    vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
  end,
}

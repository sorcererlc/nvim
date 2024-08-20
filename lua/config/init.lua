local M = {}

function M:init()
  Config = vim.deepcopy(require 'config.defaults') -- Load default Vim configuration
  Config.icons = vim.deepcopy(require 'config.icons') -- Load icons
  Config.plugins = {
    core = {
      disabled = require 'config.plugins.core.disabled',
      lazy = require 'config.plugins.core.lazy',
    },
  }
end

function M:load()
  vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
  end)

  for g, o in pairs(Config.vim) do
    for k, v in pairs(o) do
      vim[g][k] = v
    end
  end
end

return M

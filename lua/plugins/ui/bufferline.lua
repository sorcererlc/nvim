local opts = require 'config.plugins.ui.bufferline'

return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.opt.termguicolors = true
    vim.opt.mousemoveevent = true
    require('bufferline').setup(opts)
  end,
}

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      shortcut_type = 'number',
      shuffle_letter = false,
      -- change_to_vcs_root = true,
    }
  end,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
}

local map = vim.keymap.set
map('n', '<A-s>', '<Cmd>Neogit<CR>', { desc = 'Git status' })

return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    -- "ibhagwan/fzf-lua",              -- optional
  },
  config = true,
}

-- local map = vim.keymap.set
--
-- map('n', '<C-n>', '<Cmd>lua MiniFiles.open()<CR>', { desc = 'Open mini.files' })

return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup()

    -- require('mini.files').setup {
    --   windows = {
    --     max_number = 3,
    --     width_focus = 50,
    --     width_nofocus = 25,
    --     preview = true,
    --     width_preview = 100,
    --   },
    -- }
  end,
}

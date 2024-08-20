return {
  vim = {
    g = {
      mapleader = ' ', -- Set leader to <space>
      maplocalleader = ' ',
      have_nerd_font = true, -- Set to true if a Nerd Font is installed in your terminal
    },
    opt = {
      number = true, -- Show line numbers
      relativenumber = true, -- Show relative line numbers
      mouse = 'a', -- Enable mouse
      showmode = false, -- Hide mode, it's displayed in the status line
      breakindent = true,
      undofile = true, -- Save undo history
      ignorecase = true, -- Case insensitive search
      smartcase = true, -- Switch to case sensitive search if \C or search term contains a capital letters
      signcolumn = 'yes',
      updatetime = 250,
      timeoutlen = 300, --Display which-key popup sooner
      splitright = true, --Split to the right of the buffer
      splitbelow = true, --Split below the buffer
      list = true, -- See :h list
      listchars = { tab = '» ', trail = '.', lead = '.', nbsp = '_' }, -- See :h listchars
      inccommand = 'split', --Preview substitutions as you type
      cursorline = true, -- Show which line the cursor is one
      scrolloff = 10, -- Minimum number of screen lines to keep above and below the cursor
      termguicolors = true, --Enable 24-bit color
    },
  },
  enviroment = {
    use_icons = vim.g.have_nerd_font,
  },
}

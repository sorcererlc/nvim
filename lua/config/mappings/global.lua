-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

local map = vim.keymap.set

-- GTFO
map('n', '<C-q>', '<cmd>qa<CR>', { desc = 'Quit all' })
-- Save faster
map('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save buffer' })
map('i', '<C-s>', '<Esc><cmd>w<CR>', { desc = 'Save buffer and exit insert mode' })
-- Faster command mode
map('n', ';', ':', { desc = 'CMD enter command mode' })
-- Faster comments
map('n', '<C-/>', 'gcc', { desc = 'Toggle line comment', remap = true })
map('v', '<C-/>', 'gc', { desc = 'Toggle line comment', remap = true })
map('x', '<C-/>', 'gc', { desc = 'Toggle line comment', remap = true })
-- Disable suspend
map('n', '<C-z>', "<cmd>echo 'Suspend is disabled for mental sanity'<CR>", { desc = 'Disable nvim suspend' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlights' })

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

--
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Move to previous/next tab
map('n', '<SA-,>', '<Cmd>tabp<CR>', { desc = 'Move to previous tab' })
map('n', '<SA-.>', '<Cmd>tabn<CR>', { desc = 'Move to next tab' })
-- Move to previous/next buffer
map('n', '<A-,>', '<Cmd>bp<CR>', { desc = 'Move to previous buffer' })
map('n', '<A-.>', '<Cmd>bn<CR>', { desc = 'Move to next buffer' })
-- Re-order tab to previous/next
map('n', '<A-k>', '<Cmd>-tabmove<CR>', { desc = 'Move tab to previous' })
map('n', '<A-m>', '<Cmd>+tabmove<CR>', { desc = 'Move tab to next' })
-- Close tab
map('n', '<A-c>', '<Cmd>tabclose<CR>', { desc = 'Close tab' })
-- Close buffer
map('n', '<A-q>', '<Cmd>bd<CR>', { desc = 'Quit' })

-- [[ Keymaps ]]
--  See `:help vim.keymap.set()`
--
-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>wv', ':vsplit<CR>', { desc = 'Vertical split', noremap = true, silent = true })

-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>wh', ':split<CR>', { desc = 'Horizontal split', noremap = true, silent = true })

-- Close current window
vim.api.nvim_set_keymap('n', '<leader>wq', ':close<CR>', { desc = 'Window close', noremap = true, silent = true })

-- Jump to the next window
vim.api.nvim_set_keymap('n', '<leader>ww', '<C-w>w', { desc = 'Next window', noremap = true, silent = true })

-- Jump to the previous open file
vim.api.nvim_set_keymap('n', '<leader>wp', ':bprev<CR>', { desc = 'Prev file', noremap = true, silent = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

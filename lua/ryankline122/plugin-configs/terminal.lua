function TerminalConfig()
  require('terminal').setup()

  local term_map = require 'terminal.mappings'
  vim.keymap.set({ 'n', 'x' }, '<leader>ts', term_map.operator_send, { expr = true })
  vim.keymap.set('n', '<C-a>', term_map.toggle)
  vim.keymap.set('t', '<C-a>', term_map.toggle)
  vim.keymap.set('n', '<leader>tO', term_map.toggle { open_cmd = 'enew' })
  vim.keymap.set('n', '<leader>tr', term_map.run)
  vim.keymap.set('n', '<leader>tR', term_map.run(nil, { layout = { open_cmd = 'enew' } }))
  vim.keymap.set('n', '<leader>tk', term_map.kill)
  vim.keymap.set('n', '<leader>t]', term_map.cycle_next)
  vim.keymap.set('n', '<leader>t[', term_map.cycle_prev)
  vim.keymap.set('n', '<leader>tl', term_map.move { open_cmd = 'belowright vnew' })
  vim.keymap.set('n', '<leader>tL', term_map.move { open_cmd = 'botright vnew' })
  vim.keymap.set('n', '<leader>th', term_map.move { open_cmd = 'belowright new' })
  vim.keymap.set('n', '<leader>tH', term_map.move { open_cmd = 'botright new' })
  vim.keymap.set('n', '<leader>tf', term_map.move { open_cmd = 'float' })

  vim.cmd [[command! -bang -nargs=* WQ wall|qa]]

  vim.api.nvim_create_autocmd({ 'WinEnter', 'BufWinEnter', 'TermOpen' }, {
    callback = function(args)
      if vim.startswith(vim.api.nvim_buf_get_name(args.buf), 'term://') then
        vim.cmd 'startinsert'
      end
    end,
  })

  vim.api.nvim_create_autocmd('TermOpen', {
    command = [[setlocal nonumber norelativenumber winhl=Normal:NormalFloat]],
  })
end

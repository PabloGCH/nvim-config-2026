vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  { src = 'https://github.com/nvim-telescope/telescope.nvim', version = vim.version.range('0.2') },
})

require('telescope').setup({})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<A-f>', builtin.find_files, { desc = 'Find files by name' })
vim.keymap.set('n', '<A-s>', builtin.live_grep, { desc = 'Find files by text' })

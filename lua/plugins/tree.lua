
-- Disable netrw (recommended by nvim-tree). Do this before the plugin loads.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.pack.add({
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/nvim-tree/nvim-web-devicons', -- optional, needs a Nerd Font
})

require('nvim-tree').setup({
  view = {
    side = 'left',
    width = 30,
  },
  filters = { dotfiles = false },
})

-- NVIM-TREE
-- --------------------------

-- OPEN FILE EXPLORER
vim.keymap.set("n", "<A-e>", ":NvimTreeToggle<CR>", { noremap = true })
-- CLOSE FILE EXPLORER
vim.keymap.set("n", "<Esc>", ":NvimTreeClose<CR>", { noremap = true })


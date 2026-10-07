vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  -- optional: installs servers for you
  'https://github.com/mason-org/mason.nvim',
})

require('mason').setup() -- optional, see below

-- Turn on the servers you use
-- vim.lsp.enable({ 'lua_ls', 'ts_ls', 'pyright' }) -- swap for your languages

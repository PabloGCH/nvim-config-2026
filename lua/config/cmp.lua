-- LSP keymaps (buffer-local, only active when a server is attached)
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = function(desc) return { buffer = ev.buf, desc = desc } end

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts('Go to declaration'))
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts('Go to definition'))
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts('Go to implementation'))

    -- Native completion
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

vim.o.completeopt = 'menu,menuone,noinsert,fuzzy,popup'

-- <C-Space>: manually trigger completion
vim.keymap.set('i', '<C-Space>', function() vim.lsp.completion.get() end)

-- <CR>: accept the selected item (or the first one if none is selected)
vim.keymap.set('i', '<CR>', function()
  if vim.fn.pumvisible() == 1 then
    if vim.fn.complete_info({ 'selected' }).selected == -1 then
      return '<C-n><C-y>'
    end
    return '<C-y>'
  end
  return '<CR>'
end, { expr = true })

-- <C-j> / <C-k>: next / previous item
vim.keymap.set('i', '<C-j>', function()
  return vim.fn.pumvisible() == 1 and '<C-n>' or '<C-j>'
end, { expr = true })
vim.keymap.set('i', '<C-k>', function()
  return vim.fn.pumvisible() == 1 and '<C-p>' or '<C-k>'
end, { expr = true })

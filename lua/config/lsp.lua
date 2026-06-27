-- enable lsp
vim.lsp.enable({ 'lua_ls', 'clangd' })

vim.api.nvim_create_autocmd('LspAttach', {

  group = vim.api.nvim_create_augroup('simon.lsp', {}),

  callback = function(ev)
    -- local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))

    -- config keymaps
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = 'LSP Goto Declaration' })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'LSP Goto Definiton' })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = ev.buf })
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { buffer = ev.buf })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf })
  end,
})

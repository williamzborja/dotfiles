return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    {'neovim/nvim-lspconfig'},-- LSP Support
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional
  },
  config = function()
    local lsp = require('lsp-zero')
    lsp.preset('recommended')
    require('lspconfig').clangd.setup({})

    lsp.nvim_workspace()
    lsp.setup()
  end
}


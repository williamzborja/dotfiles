
return {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional
},
  config = function()
    local lsp = require('lsp-zero')
    lsp.preset('recommended')
    -- (Optional) Configure lua language server for neovim
    --
    require('lspconfig').clangd.setup({})
    lsp.nvim_workspace()
    lsp.setup()
  end
}


local markdown_preview = {
	'ellisonleao/glow.nvim',
	'simrat39/symbols-outline.nvim',
	{'iamcco/markdown-preview.nvim', build = function() vim.fn["mkdp#util#install"]() end,},
}

local git = {
	'TimUntersberger/neogit',
	'sindrets/diffview.nvim',
}

local lsp = {
	'williamboman/mason.nvim',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'L3MON4D3/LuaSnip',
	'neovim/nvim-lspconfig',
}

return {
	'folke/todo-comments.nvim', --todo comments
  'tpope/vim-surround',
	markdown_preview,
}

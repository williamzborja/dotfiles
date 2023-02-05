local catppuccin = {"catppuccin/nvim", as = "catppuccin",
		flavour = "macchiato",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		config = function() vim.cmd.colorscheme "catppuccin" end,
}

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
	catppuccin,
	'nvim-telescope/telescope.nvim',
	'folke/todo-comments.nvim', --todo comments
	markdown_preview,
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
}

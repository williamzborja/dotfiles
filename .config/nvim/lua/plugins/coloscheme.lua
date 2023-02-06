return {
	'folke/tokyonight.nvim',
	name = "tokyonight",
	lazy = false,
	config = function()
		opts = {style = 'night'}
		require('tokyonight').setup(opts)
		vim.cmd.colorscheme 'tokyonight'
	end
}

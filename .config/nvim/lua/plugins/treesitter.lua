return {
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate", 
		config = true,
		opts = {
			highlight = true,
		},
	},
}

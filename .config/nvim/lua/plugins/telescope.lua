return {
  'nvim-telescope/telescope.nvim',
	name = 'telescope',
	dependencies = {'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'},
	keys = {
		{"<leader>ff", "<cmd>Telescope find_files<cr>"},
		{"<leader>fg", "<cmd>Telescope live_grep<cr>"},
		{"<leader>fb", "<cmd>Telescope buffers<cr>"},
		{"<leader>fh", "<cmd>Telescope help_tags<cr>"},
	    {"<C-p>", "<cmd>Telescope git_files<cr>"},
	},
}

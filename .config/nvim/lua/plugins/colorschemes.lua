return {
  {
    'rose-pine/neovim', 
    name = 'rose-pine', 
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine'
    end,
  },
  { 
    "bluz71/vim-nightfly-colors", 
    name="nightfly", 
    lazy=true
  },
  {
    "rebelot/kanagawa.nvim",
    lazy=true,
  }
}

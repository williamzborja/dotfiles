-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

local opts = {
  silent = true,
}

-- General keybinding
map("n", "<C-s>", ":w<CR>", opts) -- save
map("n", "<C-x>", ":qa<CR>", opts)
map("n", "<C-w>", ":bdelete<CR>", opts)
-- buffer
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts) 

map("n", "<leader>nh", ":nohl<CR>", opts) 
map("n", "x", '"_x', opts) 
-- 

map("i", "jk", "<ESC>", opts)

-- Plugins keybinding are defined in plugins/<plugin_name>.lua file

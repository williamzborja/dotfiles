-- set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

-- General keybinding
map("n", "<C-s>", ":w<CR>") -- save
map("n", "<C-q>", ":qa<CR>" )
-- buffer
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l") 

-- Plugins keybinding are defined in plugins/<plugin_name>.lua file

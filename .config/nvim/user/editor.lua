local options = {
	wrap = false,
	tabstop = 2,
	shiftwidth = 2,
	cursorline = true,
	signcolumn = "yes",
	encoding = "UTF-8",
	guifont = "Hack Nerd Font",
}


for k, v in pairs(options) do
	vim.opt[k] = v
end

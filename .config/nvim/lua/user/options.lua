local options = {
	backup = false,
	number = true,
	guifont = "Hack Nerd Font",
	signcolumn = "yes",
	encoding = "UTF-8",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

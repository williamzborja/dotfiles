local options = {
	shiftwidth = 2,
	tabstop = 2,
	wrap = false,
	cursorline = true,
	autowrite = true
}


for k, v in pairs(options) do
	vim.opt[k] = v
end

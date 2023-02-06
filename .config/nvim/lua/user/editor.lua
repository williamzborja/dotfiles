local options = {
	-- tab and ident
	shiftwidth = 2,
	tabstop = 2,
	autoindent = true,
	expandtab = true,
	--
	wrap = false,
	cursorline = true,
	autowrite = true,

	-- search
	ignorecase = true,
	smartcase = true,

	termguicolors = true,
}

local opt = vim.opt

for k, v in pairs(options) do
	opt[k] = v
end


opt.iskeyword:append("-")
opt.clipboard:append("unnamedplus")

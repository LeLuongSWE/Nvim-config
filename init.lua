require("config.lazy")


require("symbols-outline").setup({
	auto_close = true
})
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
		exclude = {".DS_Store"}
	},
})
require('lualine').setup {
	options = { theme = 'onedark' },
}
-- relative number
vim.cmd("set rnu")
vim.cmd("set nu")
vim.o.clipboard = 'unnamedplus'



-- lua/plugins/core.lua
return {
	'nvim-lua/plenary.nvim',
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	'nvim-tree/nvim-tree.lua',
	'nvim-tree/nvim-web-devicons',
	'nvim-lualine/lualine.nvim',
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup {}
		end,
	},
	'mbbill/undotree',
	'simrat39/symbols-outline.nvim',
	'theprimeagen/harpoon',

}

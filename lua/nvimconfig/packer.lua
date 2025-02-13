-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		-- pv pv   
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({
		'binhtran432k/dracula.nvim',
		as = 'dracula',
		config = function()
			vim.cmd('colorscheme dracula-soft')
		end
	})
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')

	use 'mfussenegger/nvim-dap'
	use 'mfussenegger/nvim-jdtls'
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
end)


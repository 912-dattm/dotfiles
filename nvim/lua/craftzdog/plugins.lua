local status, packer = pcall(require, "packer")
if (not status) then
	print("Packer is not installed")
	return
end

--vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
	})

	use({ "echasnovski/mini.nvim", branch = "stable" })
	use 'lewis6991/impatient.nvim'
	use("nathom/filetype.nvim")
	use({
		"phaazon/hop.nvim",
		branch = "v1", -- optional but strongly recommended
	})
	use("valloric/matchtagalways")
	use("karb94/neoscroll.nvim")
	use("preservim/nerdcommenter")
	use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
	use "MunifTanjim/prettier.nvim"


	use 'nvim-lualine/lualine.nvim' -- Statusline
	use 'nvim-lua/plenary.nvim' -- Common utilities
	use 'jose-elias-alvarez/nvim-lsp-ts-utils'
	use 'onsails/lspkind-nvim' -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp' -- Completion
	use 'neovim/nvim-lspconfig' -- LSP
	use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'ThePrimeagen/harpoon'
	use 'folke/zen-mode.nvim'

	use 'glepnir/lspsaga.nvim' -- LSP UIs
	use 'L3MON4D3/LuaSnip'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}
	use 'windwp/nvim-ts-autotag'
	use 'kyazdani42/nvim-web-devicons' -- File icons
	use 'nvim-telescope/telescope.nvim'
	use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
	use 'windwp/nvim-autopairs'
	use 'norcalli/nvim-colorizer.lua'
	use 'akinsho/nvim-bufferline.lua'
	use "b0o/incline.nvim"

	use 'lewis6991/gitsigns.nvim'
	use 'dinhhuy258/git.nvim' -- For git blame & browse

	use '~/.config/nvim/theme'
end)

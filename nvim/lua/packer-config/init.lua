return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- explore
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icon
		},
	})

	-- other
	use("windwp/nvim-autopairs")
	use("valloric/matchtagalways")
	use("tribela/vim-transparent")
	use({
		"phaazon/hop.nvim",
		branch = "v1", -- optional but strongly recommended
	})
	use("gcmt/taboo.vim")
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })
	use("preservim/nerdcommenter")
	use("karb94/neoscroll.nvim")
	use("tpope/vim-surround")
	use("lewis6991/impatient.nvim")
	use({ "echasnovski/mini.nvim", branch = "stable" })
	use("folke/zen-mode.nvim")
	use("norcalli/nvim-colorizer.lua")
	--use({
	--"Djancyp/custom-theme.nvim",
	--config = function()
	--require("custom-theme").setup()
	--end,
	--})

	-- treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":tsupdate" })
	use("david-kunz/markid")
	use("nvim-treesitter/playground")
	use({ "windwp/nvim-ts-autotag" })

	-- cmp
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/vim-vsnip" },
		},
	})

	-- lsp
	use("jose-elias-alvarez/nvim-lsp-ts-utils")
	use("neovim/nvim-lspconfig") -- enable lsp
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- find files
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
		},
	})

	--theme
	use("~/.config/nvim/theme")
	use("Mofiqul/vscode.nvim")
end)

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("kyazdani42/nvim-web-devicons")

	--[[COQ]]
	use({
		"ms-jpq/coq_nvim",
		branch = "coq",
	})

	use({ "ms-jpq/coq.artifacts", branch = "artifacts" })
	use({ "ms-jpq/coq.thirdparty", branch = "3p" })

	--[[telescope]]
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-ui-select.nvim" })

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })
	use({
		"lewis6991/spellsitter.nvim",
		config = function()
			require("spellsitter").setup()
		end,
	})
	use("rafamadriz/friendly-snippets")
	use("neovim/nvim-lspconfig")
	use("norcalli/nvim-colorizer.lua")

	--[[Theme]]
	use("arcticicestudio/nord-vim")
	use("EdenEast/nightfox.nvim")
	use("rebelot/kanagawa.nvim")
	use("Mofiqul/dracula.nvim")

	--[[Git and HG]]
	use({ "mhinz/vim-signify" })

	--[[Tools]]
	use({ "kevinhwang91/nvim-hlslens" })
	use({ "romainl/vim-cool" })
	use("sbdchd/neoformat")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("tversteeg/registers.nvim")
	use("tpope/vim-repeat")
	use("tpope/vim-unimpaired")
	use("mattn/emmet-vim")
	use("machakann/vim-highlightedyank")
	use("raimondi/delimitmate")
	use("andymass/vim-matchup")
	use("kosayoda/nvim-lightbulb")
	use("pechorin/any-jump.vim")
	use("yggdroot/indentline")
	use("tpope/vim-surround")
	use("airblade/vim-rooter")
	use("phaazon/hop.nvim")
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("folke/lsp-colors.nvim")
	use({
		"zsugabubus/crazy8.nvim",
		event = { "BufRead" },
	})
	use({ "simrat39/symbols-outline.nvim" })
	use("b3nj5m1n/kommentary")
	use("chentau/marks.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({ "tweekmonster/django-plus.vim" })
	use({ "mfussenegger/nvim-jdtls" })
	use({ "p00f/nvim-ts-rainbow" })
	use("Pocco81/AutoSave.nvim")
end)

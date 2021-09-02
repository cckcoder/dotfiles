local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'

    --[[ Complete ]]--
    use 'hrsh7th/nvim-compe'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } 
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    use 'neovim/nvim-lspconfig'
    use 'norcalli/nvim-colorizer.lua'

    --[[Theme]]--
    use 'arcticicestudio/nord-vim'

    --[[Git and HG]]--
    use { 'mhinz/vim-signify' }

    --[[Tools]]--
    use 'sbdchd/neoformat'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use "tversteeg/registers.nvim"
    use 'tpope/vim-unimpaired'
    use 'mattn/emmet-vim'
    use 'machakann/vim-highlightedyank'
    use 'raimondi/delimitmate'
    use 'andymass/vim-matchup'
    use 'kosayoda/nvim-lightbulb'
    use 'pechorin/any-jump.vim'
    use 'yggdroot/indentline'
    use 'tpope/vim-surround'
    use 'airblade/vim-rooter'
    use 'phaazon/hop.nvim'
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function() require'my_statusline' end,
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        "folke/which-key.nvim",
        config = function() require("which-key").setup {} end
    }
    use { 
        'onsails/lspkind-nvim',
        as = 'lspkind',
        config = function() require("lspkind").setup {} end
    }
    use { 'glepnir/lspsaga.nvim' }
    use { 
        'zsugabubus/crazy8.nvim',
        event = { 'BufRead' } 
    }
    use { 'simrat39/symbols-outline.nvim' }
    use 'b3nj5m1n/kommentary'
end)


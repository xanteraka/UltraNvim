vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}
  -- bufferline.nvim
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- telescope.nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- telescope plugins
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make"
  }
  use "nvim-telescope/telescope-file-browser.nvim"
  -- lualine.nvim
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- impatient.nvim (cache for starting nvim quickly)
  use 'lewis6991/impatient.nvim'
  -- vim-which-key
  use { "liuchengxu/vim-which-key" }
  --nvim-autopairs 
  use {"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  } 
-- indent-blankline.nvim
  use {"lukas-reineke/indent-blankline.nvim"}
  -- nvim-colorizer.lua (colorize color codes)
  use {"NvChad/nvim-colorizer.lua"}
  -- Comment.nvim 
  use {"numToStr/Comment.nvim"}
  -- nvim-web-devicons
  use 'nvim-tree/nvim-web-devicons'
  -- nvim-treesitter
  use {'nvim-treesitter/nvim-treesitter',{ run =':TSUpdate'}}
  -- nvim-tree W devicons
  use {'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons',}
  }
  --themes 
  use {'ellisonleao/gruvbox.nvim' }
  use {"catppuccin/nvim", as = "catppuccin"}
  use {'shaunsingh/nord.nvim'}
  use {'folke/tokyonight.nvim'}
  use {"neanias/everforest-nvim"}
  use {'Mofiqul/adwaita.nvim'}
  use {'tanvirtin/monokai.nvim'}
  use {'Mofiqul/dracula.nvim'}
  --lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
  
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
  
      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

end)

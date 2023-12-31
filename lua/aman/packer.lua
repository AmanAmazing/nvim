-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- use({ 
	 --  'rose-pine/neovim', 
	 --  as = 'rose-pine',
	 --  config = function() 
		--   vim.cmd('colorscheme rose-pine')
	 --  end
  -- })
  use({ 
	  'Mofiqul/dracula.nvim', 
	  config = function() 
		  vim.cmd('colorscheme dracula')
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use('tpope/vim-fugitive') 
    


  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Require
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
    {'hrsh7th/cmp-nvim-lua'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'} 
  }
}
    -- adding support for autopair 
    -- check treesitter config file for customisations. 
    -- since I am using treesitter to autopair 
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
    -- adding lualine for statusline  
    -- after/plugin/lualine.lua for the customisation
    use {
    'nvim-lualine/lualine.nvim',
     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
    -- Makes it easier to comment out line.  
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
    -- makes it easier to see nested loops  
    use "lukas-reineke/indent-blankline.nvim"
    
    -- stackmap 
    use "/Users/aman/plugins/stackmap.nvim"
    
end)




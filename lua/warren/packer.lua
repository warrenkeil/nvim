-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                          , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use( 'nvim-treesitter/playground')

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use('github/copilot.vim')
  
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  -- Commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

  -- LSP
  use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
	requires = {
         -- LSP Support
	  {'neovim/nvim-lspconfig'},             -- Required
	  {                                      -- Optional
	    'williamboman/mason.nvim',
	    run = function()
		  pcall(vim.cmd, 'MasonUpdate')
	    end,
	  },
	 {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
  {'hrsh7th/nvim-cmp'},     -- Required
  {'hrsh7th/cmp-nvim-lsp'}, -- Required
  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

  -- Auto close brackets
  use 'm4xshen/autoclose.nvim'

  use({ 'rose-pine/neovim', as = 'rose-pine' })

  use { "catppuccin/nvim", as = "catppuccin" }

  vim.cmd('colorscheme catppuccin-frappe')
end)

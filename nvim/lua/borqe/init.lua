-- NEEDED: remaps before plugins
require("borqe.remap")

-- PLUGINS
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- the actual plugins go here
local plugins = {
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 
	    "catppuccin/nvim", name = "catppuccin", priority = 1000 
    },
    {
	    "nvim-treesitter/nvim-treesitter", name = "nvim-treesitter"
    },
    {
	    "mbbill/undotree"
    },
    {
	    "tpope/vim-fugitive"
    },
    {
	  "VonHeikemen/lsp-zero.nvim",
	  branch = 'v2.x',
	  dependencies = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             	-- Required
	    {'williamboman/mason.nvim'},           	-- Optional
	    {'williamboman/mason-lspconfig.nvim'}, 	-- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     			-- Required
	    {'hrsh7th/cmp-nvim-lsp'}, 			-- Required
	    {'L3MON4D3/LuaSnip'}     			-- Required
    },
    {
	"epwalsh/obsidian.nvim",
	  lazy = true,
	  dependencies = {
	    "nvim-lua/plenary.nvim",		 	-- Required.
	  },
	  opts = {
	    dir = "~/code/notebook",
	  }
    }
  }
}

require("lazy").setup(plugins, opts)

-- VISUAL   
vim.cmd.colorscheme "catppuccin-mocha"


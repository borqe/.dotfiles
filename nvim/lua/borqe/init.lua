-- NEEDED: remaps before plugins
require("borqe.remap")
require("borqe.set")

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
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-treesitter/nvim-treesitter", 
        name = "nvim-treesitter"
    },
    { "mbbill/undotree" },
    { "tpope/vim-fugitive" },
    {
        "epwalsh/obsidian.nvim",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",		 	-- Required.
        },
        opts = {
            dir = "~/code/notebook",
        }
    },
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        }
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },

    -- Themes
    {
        'luisiacc/gruvbox-baby',
        branch = 'main',
    },
}

require("lazy").setup(plugins, opts)

-- VISUAL   
vim.cmd.colorscheme "gruvbox-baby"


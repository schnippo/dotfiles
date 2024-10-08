-- bootstrap lazy.nvim
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

local plugins = {
    'vimwiki/vimwiki',
    'mipmip/vim-scimark',
    'folke/tokyonight.nvim',

	{ 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { {'nvim-lua/plenary.nvim'} } },
	'nvim-treesitter/playground',
	'nvim-treesitter/nvim-treesitter',

	'theprimeagen/harpoon',
	'junegunn/goyo.vim',
	'mbbill/undotree',
	'tpope/vim-fugitive', -- git client
    'tpope/vim-commentary',
    'tpope/vim-surround',
    'tpope/vim-repeat',
    {'rrethy/vim-hexokinase', build = "make hexokinase"},

	{ 'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			'neovim/nvim-lspconfig',             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end, },
		'williamboman/mason-lspconfig.nvim', -- Optional

		-- Autocompletion
		'hrsh7th/nvim-cmp',     -- Required
		'hrsh7th/cmp-nvim-lsp', -- Required
		'L3MON4D3/LuaSnip',     -- Required
        }
    }
}

local opts = {}

require("lazy").setup(plugins, opts)


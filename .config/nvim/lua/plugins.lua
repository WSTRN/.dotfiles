-- to bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

local lazy_keys = require("lazy.view.config").keys
local lazy_keys_bindings = {
	{ func = "hover", key = "O" },
}
for _, v in ipairs(lazy_keys_bindings) do
	lazy_keys[v.func] = v.key
end
local lazy_cmd = require("lazy.view.config").commands
local lazy_cmd_bindings = {
	{ cmd = "install", key = "E" },
}
for _, v in ipairs(lazy_cmd_bindings) do
	lazy_cmd[v.cmd].key = v.key
	lazy_cmd[v.cmd].key_plugin = v.key
end
--vim.keymap.set("n", "<leader>pm", ":Lazy<CR>", { noremap = true })

--plugins-------------------------------------------------------------------------
local plugins = {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {}
	},
	'feline-nvim/feline.nvim',
	'goolord/alpha-nvim',

	{ 'akinsho/toggleterm.nvim', version = '*' },
	'jiangmiao/auto-pairs',
	'numToStr/Comment.nvim',
	'RRethy/vim-illuminate', --highlight word
	'mbbill/undotree',
	'gcmt/wildfire.vim',
	'tpope/vim-surround',
	--surround
	--cs"' change surround
	--ds"  del "
	--ysiw] add ] surround
	--use S' in visual mode add ' surround
	--
	-------------------------------------------
	--use 'liuchengxu/vista.vim'
	'lewis6991/gitsigns.nvim',
	'simrat39/symbols-outline.nvim',
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'kyazdani42/nvim-web-devicons' },
	'tiagovla/scope.nvim',
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			{
				-- only needed if you want to use the commands with "_with_window_picker" suffix
				's1n7ax/nvim-window-picker',
				version = "v1.*",
				config = function()
					require 'window-picker'.setup({
						autoselect_one = true,
						include_current = false,
						filter_rules = {
							-- filter using buffer options
							bo = {
								-- if the file type is one of following, the window will be ignored
								filetype = { 'neo-tree', "neo-tree-popup", "notify", "quickfix" },
								-- if the buffer type is one of following, the window will be ignored
								buftype = { 'terminal' },
							},
						},
						other_win_hl_color = '#e35e4f',
					})
				end,
			}
		}
	},
	{
		"petertriho/nvim-scrollbar",
		config = function()
			require("scrollbar").setup()
		end
	},


	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	--use {'junegunn/fzf', run = function() vim.fn['fzf#install'](0) }
	'junegunn/fzf.vim',
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = 'nvim-lua/plenary.nvim'
	},
	'honza/vim-snippets',
	{
		'nvim-treesitter/nvim-treesitter',
		build = function() require("nvim-treesitter.install").update { with_sync = true } end
	}, --highlight language
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',
	'rafamadriz/friendly-snippets',

	'babaybus/DoxygenToolkit.vim',
	--use 'github/copilot.vim'
	{
		"zbirenbaum/copilot.lua",
		config = function()
			require("copilot").setup({})
		end
	},
	{
		"zbirenbaum/copilot-cmp",
		dependencies = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end
	},

}

local opts = {}


require("lazy").setup(plugins, opts)

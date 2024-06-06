-------------------------------
--install packer Automatically
--
-------------------------------
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup({
	function(use)
		-- My plugins here
		-- use 'foo1/bar1.nvim'
		-- use 'foo2/bar2.nvim'
		use 'wbthomason/packer.nvim'
		use { 'folke/tokyonight.nvim', branch = 'main' }
		use 'feline-nvim/feline.nvim'
		use 'goolord/alpha-nvim'

		use { 'akinsho/toggleterm.nvim', tag = '*' }
		use 'jiangmiao/auto-pairs'
		use 'preservim/nerdcommenter'
		use 'RRethy/vim-illuminate' --highlight word
		use 'mbbill/undotree'
		use 'gcmt/wildfire.vim'
		use 'tpope/vim-surround'
		--surround
		--cs"' change surround
		--ds"  del "
		--ysiw] add ] surround
		--use S' in visual mode add ' surround
		--
		-------------------------------------------
		--use 'liuchengxu/vista.vim'
		use 'lewis6991/gitsigns.nvim'
		use 'simrat39/symbols-outline.nvim'
		use { 'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons' }
		use 'tiagovla/scope.nvim'
		use {
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires = {
				"nvim-lua/plenary.nvim",
				"kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
				"MunifTanjim/nui.nvim",
				{
					-- only needed if you want to use the commands with "_with_window_picker" suffix
					's1n7ax/nvim-window-picker',
					tag = "v1.*",
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
		}
		use {
			"petertriho/nvim-scrollbar",
			config = function()
				require("scrollbar").setup()
			end
		}


		use 'neovim/nvim-lspconfig'
		use 'williamboman/mason.nvim'
		use 'williamboman/mason-lspconfig.nvim'
		--use {'junegunn/fzf', run = function() vim.fn['fzf#install'](0) }
		use 'junegunn/fzf.vim'
		use {
			'nvim-telescope/telescope.nvim',
			branch = '0.1.x',
			requires = 'nvim-lua/plenary.nvim'
		}
		use 'honza/vim-snippets'
		use {
			'nvim-treesitter/nvim-treesitter',
			run = function() require("nvim-treesitter.install").update { with_sync = true } end
		} --highlight language
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'hrsh7th/nvim-cmp'
		use 'L3MON4D3/LuaSnip'
		use 'saadparwaiz1/cmp_luasnip'
		use 'rafamadriz/friendly-snippets'

		use 'babaybus/DoxygenToolkit.vim'
		--use 'github/copilot.vim'
		use { "zbirenbaum/copilot.lua",
			config = function()
				require("copilot").setup({})
			end
		}
		use {
			"zbirenbaum/copilot-cmp",
			after = { "copilot.lua" },
			config = function()
				require("copilot_cmp").setup()
			end
		}


		-- Automatically set up your configuration after cloning packer.nvim
		-- Put this at the end after all plugins
		if packer_bootstrap then
			require('packer').sync()
		end
	end,
	config = {
		display = {
			open_fn = require('packer.util').float,
		}
	}
})

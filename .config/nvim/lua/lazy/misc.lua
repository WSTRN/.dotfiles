return {
	"babaybus/DoxygenToolkit.vim",
	{
		"kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").set_icon({
				dockerfile = {
					icon = "",
					color = "#99CCFF",
					name = "Dockerfile",
				},
			})
		end,
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
		config = function()
			require("which-key").setup({
				window = {
					border = "rounded", -- none, single, double, shadow
					position = "bottom", -- bottom, top
					margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
					padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
					winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
					zindex = 1000, -- positive value to position WhichKey above other floating windows.
				},
				layout = {
					height = { min = 3, max = 5 }, -- min and max height of the columns
					width = { min = 20, max = 30 }, -- min and max width of the columns
					spacing = 2, -- spacing between columns
					align = "left", -- align columns left, center or right
				},
				triggers_blacklist = {
					-- list of mode / prefixes that should never be hooked by WhichKey
					-- this is mostly relevant for keymaps that start with a native binding
					n = { "v", "d" },
					v = { "v", "d" },
				},
			})
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({
				toggler = {
					---Line-comment toggle keymap
					line = "<C-_>",
					---Block-comment toggle keymap
					block = "<leader>c",
				},
				opleader = {
					---Line-comment keymap
					line = "<C-_>",
					---Block-comment keymap
					block = "<leader>c",
				},
				mappings = {
					---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
					basic = true,
					---Extra mapping; `gco`, `gcO`, `gcA`
					extra = false,
				},
			})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({})
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	"RRethy/vim-illuminate", --highlight word
	"mbbill/undotree",
	"gcmt/wildfire.vim",
	"tpope/vim-surround",
	--surround
	--cs"' change surround
	--ds"  del "
	--ysiw] add ] surround
	--use S' in visual mode add ' surround
	-------------------------------------------
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	-- PERF:
	-- HACK:
	-- TODO:
	-- NOTE: 
	-- FIX:
	-- WARNING:
	----------------
}

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"vim",
					"c",
					"go",
					"python",
					"vimdoc",
					"rust",
					"toml",
					"json",
					"yaml",
				},
				highlight = {
					enable = true,
					use_languagetree = true,
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<CR>",
						node_incremental = "<CR>",
						node_decremental = "<BS>",
					},
				},
			})
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
			vim.wo.foldlevel = 99
		end,
	},
	{
		"Bekaboo/dropbar.nvim",
		-- optional, but required for fuzzy finder support
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		config = function()
			local dbopts = require("dropbar.configs").opts
			local utils = require("dropbar.utils")
			dbopts.menu.keymaps = {
				["j"] = "<C-w>q",
				["<Esc>"] = function()
					utils.menu.exec("close")
				end,
				["l"] = function()
					local menu = utils.menu.get_current()
					if not menu then
						return
					end
					local cursor = vim.api.nvim_win_get_cursor(menu.win)
					local component = menu.entries[cursor[1]]:first_clickable(cursor[2])
					if component then
						menu:click_on(component, nil, 1, "l")
					end
				end,
				["<CR>"] = function()
					local menu = utils.menu.get_current()
					if not menu then
						return
					end
					local cursor = vim.api.nvim_win_get_cursor(menu.win)
					local component = menu.entries[cursor[1]]:next_clickable(cursor[2])
					if component then
						menu:click_on(component, nil, 1, "l")
					end
				end,
				["i"] = {},
				["<LeftMouse>"] = function()
					local menu = utils.menu.get_current()
					if not menu then
						return
					end
					local mouse = vim.fn.getmousepos()
					local clicked_menu = utils.menu.get({ win = mouse.winid })
					-- If clicked on a menu, invoke the corresponding click action,
					-- else close all menus and set the cursor to the clicked window
					if clicked_menu then
						clicked_menu:click_at({ mouse.line, mouse.column - 1 }, nil, 1, "l")
						--[[ return ]]
					end
					utils.menu.exec("close")
					utils.bar.exec("update_current_context_hl")
					if vim.api.nvim_win_is_valid(mouse.winid) then
						vim.api.nvim_set_current_win(mouse.winid)
					end
				end,
				["<MouseMove>"] = function()
					local menu = utils.menu.get_current()
					if not menu then
						return
					end
					local mouse = vim.fn.getmousepos()
					utils.menu.update_hover_hl(mouse)
					if dbopts.menu.preview then
						utils.menu.update_preview(mouse)
					end
				end,
			}
			dbopts.menu.win_configs.border = "rounded"
			dbopts.bar.pick.pivots = "asdfjklghweruiovnmbty"
		end,
	},
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		opts = {
			keymaps = {
				show_help = "?",
				close = { "<Esc>", "q" },
				goto_location = "e",
				peek_location = "o",
				goto_and_close = "<CR>",
				restore_location = "H",
				hover_symbol = "h",
				toggle_preview = "<TAB>",
				rename_symbol = "r",
				code_actions = "a",
				fold = "j",
				fold_toggle = "t",
				fold_toggle_all = "T",
				unfold = "l",
				unfold_all = "W",
				fold_reset = "E",
				down_and_jump = "<C-k>",
				up_and_jump = "<C-i>",
			},
		},
	},
}

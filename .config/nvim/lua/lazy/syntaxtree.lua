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
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup({
				highlight_hovered_item = true,
				show_guides = true,
				auto_preview = false,
				position = "right",
				relative_width = true,
				width = 28,
				auto_close = false,
				show_numbers = false,
				show_relative_numbers = false,
				show_symbol_details = true,
				preview_bg_highlight = "Pmenu",
				autofold_depth = nil,
				auto_unfold_hover = true,
				fold_markers = { "", "" },
				wrap = false,
				keymaps = {
					-- These keymaps can be a string or a table for multiple keys
					close = { "<Esc>", "q" },
					goto_location = "<Cr>",
					focus_location = "o",
					hover_symbol = "<C-space>",
					toggle_preview = "<Tab>",
					rename_symbol = "r",
					code_actions = "a",
					fold = "j",
					unfold = "l",
					fold_all = "W",
					unfold_all = "E",
					fold_reset = "R",
				},
				lsp_blacklist = {},
				symbol_blacklist = {},
				symbols = {
					File = { icon = "", hl = "@text.uri" },
					Module = { icon = "", hl = "@namespace" },
					Namespace = { icon = "", hl = "@namespace" },
					Package = { icon = "", hl = "@namespace" },
					Class = { icon = "𝓒", hl = "@type" },
					Method = { icon = "ƒ", hl = "@method" },
					Property = { icon = "", hl = "@method" },
					Field = { icon = "", hl = "@field" },
					Constructor = { icon = "", hl = "@constructor" },
					Enum = { icon = "ℰ", hl = "@type" },
					Interface = { icon = "ﰮ", hl = "@type" },
					Function = { icon = "", hl = "@function" },
					Variable = { icon = "", hl = "@constant" },
					Constant = { icon = "", hl = "@constant" },
					String = { icon = "𝓐", hl = "@string" },
					Number = { icon = "#", hl = "@number" },
					Boolean = { icon = "⊨", hl = "@boolean" },
					Array = { icon = "", hl = "@constant" },
					Object = { icon = "⦿", hl = "@type" },
					Key = { icon = "🔐", hl = "@type" },
					Null = { icon = "NULL", hl = "@type" },
					EnumMember = { icon = "", hl = "@field" },
					Struct = { icon = "𝓢", hl = "@type" },
					Event = { icon = "🗲", hl = "@type" },
					Operator = { icon = "+", hl = "@operator" },
					TypeParameter = { icon = "𝙏", hl = "@parameter" },
					Component = { icon = "", hl = "@function" },
					Fragment = { icon = "", hl = "@constant" },
				},
			})
		end,
	},
}

return {
	{
		"petertriho/nvim-scrollbar",
		config = function()
			require("scrollbar").setup()
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
			{
				"tiagovla/scope.nvim",
				config = function()
					require("scope").setup()
				end,
			},
		},
		config = function()
			require("bufferline").setup({
				options = {
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							highlight = "Directory",
							text_align = "center",
						},
					},
					--mode = "tabs",
					buffer_close_icon = "", --'',
					modified_icon = "●",
					show_close_icon = false,
					left_trunc_marker = " ",
					right_trunc_marker = " ",
					max_name_length = 14,
					--max_prefix_length = 13,
					tab_size = 6,
					show_tab_indicators = true,
					enforce_regular_tabs = false,
					view = "multiwindow",
					show_buffer_close_icons = true,
					separator_style = "thin",
					always_show_bufferline = true,
					diagnostics = false,
					themable = true,
				},
			})
		end,
	},
	{
		"feline-nvim/feline.nvim",
		config = function()
			local colors = {
				bg = "#282c34",
				fg = "#abb2bf",
				yellow = "#e0af68",
				cyan = "#56b6c2",
				darkblue = "#081633",
				green = "#98c379",
				orange = "#d19a66",
				violet = "#a9a1e1",
				magenta = "#c678dd",
				blue = "#61afef",
				red = "#e86671",
			}
			local vi_mode_colors = {
				NORMAL = colors.green,
				INSERT = colors.red,
				VISUAL = colors.magenta,
				OP = colors.green,
				BLOCK = colors.blue,
				REPLACE = colors.violet,
				["V-REPLACE"] = colors.violet,
				ENTER = colors.cyan,
				MORE = colors.cyan,
				SELECT = colors.orange,
				COMMAND = colors.green,
				SHELL = colors.green,
				TERM = colors.green,
				NONE = colors.yellow,
			}
			local function file_osinfo()
				local os = vim.bo.fileformat:upper()
				local icon
				if os == "UNIX" then
					icon = "  "
				elseif os == "MAC" then
					icon = "  "
				else
					icon = "  "
				end
				return icon .. os
			end

			--local lsp = require 'feline.providers.lsp'
			local vi_mode_utils = require("feline.providers.vi_mode")
			local comps = {
				vi_mode = {
					left = {
						provider = function()
							return "  " .. vi_mode_utils.get_vim_mode() -- 
						end,
						hl = function()
							local val = {
								name = vi_mode_utils.get_mode_highlight_name(),
								fg = vi_mode_utils.get_mode_color(),
								-- fg = colors.bg
							}
							return val
						end,
						right_sep = " ",
					},
					right = {
						-- provider = '▊',
						--provider = '' ,
						hl = function()
							local val = {
								name = vi_mode_utils.get_mode_highlight_name(),
								fg = vi_mode_utils.get_mode_color(),
							}
							return val
						end,
						left_sep = " ",
						right_sep = " ",
					},
				},
				file = {
					info = {
						provider = {
							name = "file_info",
							opts = {
								type = "relative-short",
								file_readonly_icon = "  ",
								file_modified_icon = "",
							},
						},
						hl = {
							fg = colors.blue,
							style = "bold",
						},
					},
					encoding = {
						provider = "file_encoding",
						left_sep = " ",
						hl = {
							fg = colors.violet,
							style = "bold",
						},
					},
					type = {
						provider = "file_type",
					},
					os = {
						provider = file_osinfo,
						--left_sep = ' ',
						hl = {
							fg = colors.violet,
							style = "bold",
						},
					},
					position = {
						provider = "position",
						left_sep = " ",
						hl = {
							fg = colors.cyan,
							-- style = 'bold'
						},
					},
				},
				left_end = {
					provider = function()
						return ""
					end,
					hl = {
						fg = colors.bg,
						bg = colors.blue,
					},
				},
				line_percentage = {
					provider = "line_percentage",
					left_sep = " ",
					hl = {
						style = "bold",
					},
				},
				scroll_bar = {
					provider = "scroll_bar",
					left_sep = " ",
					hl = {
						fg = colors.blue,
						style = "bold",
					},
				},
				lsp = {
					name = {
						provider = "lsp_client_names",
						-- left_sep = ' ',
						--right_sep = ' ',
						icon = " ",
						-- icon = '慎',
						hl = {
							fg = colors.yellow,
						},
					},
				},
				git = {
					branch = {
						provider = "git_branch",
						--icon = ' ',
						icon = " ",
						left_sep = " ",
						hl = {
							fg = colors.violet,
							style = "bold",
						},
					},
					add = {
						provider = "git_diff_added",
						hl = {
							fg = colors.green,
						},
					},
					change = {
						provider = "git_diff_changed",
						hl = {
							fg = colors.orange,
						},
					},
					remove = {
						provider = "git_diff_removed",
						hl = {
							fg = colors.red,
						},
					},
				},
			}
			local components = {
				active = {},
				inactive = {},
			}
			table.insert(components.active, {})
			table.insert(components.active, {})
			table.insert(components.active, {})
			table.insert(components.inactive, {})
			table.insert(components.inactive, {})
			table.insert(components.inactive, {})
			table.insert(components.active[1], comps.vi_mode.left)
			table.insert(components.active[1], comps.file.info)
			table.insert(components.active[1], comps.git.branch)
			table.insert(components.active[1], comps.git.add)
			table.insert(components.active[1], comps.git.change)
			table.insert(components.active[1], comps.git.remove)
			table.insert(components.inactive[1], comps.vi_mode.left)
			table.insert(components.inactive[1], comps.file.info)
			table.insert(components.active[3], comps.lsp.name)
			table.insert(components.active[3], comps.file.os)
			table.insert(components.active[3], comps.file.position)
			table.insert(components.active[3], comps.line_percentage)
			table.insert(components.active[3], comps.scroll_bar)
			table.insert(components.active[3], comps.vi_mode.right)
			require("feline").setup({
				colors = { bg = colors.bg, fg = colors.fg },
				components = components,
				vi_mode_colors = vi_mode_colors,
				force_inactive = {
					filetypes = {
						"lazy",
						"neo-tree",
						"fugitive",
						"fugitiveblame",
					},
					buftypes = { "terminal" },
					bufnames = {},
				},
			})
		end,
	},
}

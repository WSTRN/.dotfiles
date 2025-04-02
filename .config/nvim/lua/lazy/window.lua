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
		event = "ColorScheme",
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
					close_command = function(n)
						Snacks.bufdelete(n) ---@diagnostic disable-line: undefined-global
					end,
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Browser",
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
		"nvim-lualine/lualine.nvim",
		commit = "b431d228b7bbcdaea818bdc3e25b8cdbe861f056",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local section = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"filename",
						file_status = false,
					},
				},
				lualine_c = { "branch", "diff" },
				lualine_x = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						symbols = { error = " ", warn = " ", info = " " },
					},
					{
						-- Lsp server name .
						function()
							local msg = "No Active Lsp"
							local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
							local clients = vim.lsp.get_clients()
							if next(clients) == nil then
								return msg
							end
							for _, client in ipairs(clients) do
								local filetypes = client.config.filetypes
								if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
									msg = client.name
								elseif client.name == "copilot" then
									msg = msg .. " copilot"
								end
							end
							return msg
						end,
						icon = " LSP:",
						color = { fg = "#bbbbbb" },
					},
				},
				lualine_y = {
					"encoding",
					{
						function()
							return vim.bo.fileformat
						end,
					},
				},
				lualine_z = { "location" },
			}
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = { "neo-tree", "Outline", "undotree", "diff" },
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = section,
				inactive_sections = section,
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
}

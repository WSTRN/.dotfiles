require("gitsigns").setup({})
require("scrollbar.handlers.gitsigns").setup()
require("scope").setup()

--tokyonight----------------------------------------
require("tokyonight").setup({
	-- use the night style
	style = "night",
	transparent = true,
	sidebars = { "qf", "vista_kind", "terminal", "lazy" },
})
vim.cmd([[colorscheme tokyonight]])
--nvim-web-devicons----------------------------------------
require("nvim-web-devicons").set_icon({
	dockerfile = {
		icon = "",
		color = "#99CCFF",
		name = "Dockerfile",
	},
})
--comment.nvim--------------------------------------------
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
--which-key.nvim--------------------------------------------
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

--alpha-------------------------------------------------
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local cool = {
	[[                                          ]],
	[[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
	[[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
	[[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
	[[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
	[[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
	[[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
	[[      ██████╗ ██████╗  ██████╗ ██╗        ]],
	[[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
	[[     ██║     ██║   ██║██║   ██║██║        ]],
	[[     ██║     ██║   ██║██║   ██║██║        ]],
	[[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
	[[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
	[[███████╗████████╗██╗   ██╗███████╗███████╗]],
	[[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
	[[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
	[[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
	[[███████║   ██║   ╚██████╔╝██║     ██║     ]],
	[[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
	[[                                          ]],
}

local robust = {
	[[                                                    ]],
	[[        ██████╗ ██╗   ██╗██╗██╗     ██████╗         ]],
	[[        ██╔══██╗██║   ██║██║██║     ██╔══██╗        ]],
	[[        ██████╔╝██║   ██║██║██║     ██║  ██║        ]],
	[[        ██╔══██╗██║   ██║██║██║     ██║  ██║        ]],
	[[        ██████╔╝╚██████╔╝██║███████╗██████╔╝        ]],
	[[        ╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝         ]],
	[[ ██████╗  ██████╗ ██████╗ ██╗   ██╗███████╗████████╗]],
	[[ ██╔══██╗██╔═══██╗██╔══██╗██║   ██║██╔════╝╚══██╔══╝]],
	[[ ██████╔╝██║   ██║██████╔╝██║   ██║███████╗   ██║   ]],
	[[ ██╔══██╗██║   ██║██╔══██╗██║   ██║╚════██║   ██║   ]],
	[[ ██║  ██║╚██████╔╝██████╔╝╚██████╔╝███████║   ██║   ]],
	[[ ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ╚═╝   ]],
	[[     ███████╗████████╗██╗   ██╗███████╗███████╗     ]],
	[[     ██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝     ]],
	[[     ███████╗   ██║   ██║   ██║█████╗  █████╗       ]],
	[[     ╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝       ]],
	[[     ███████║   ██║   ╚██████╔╝██║     ██║          ]],
	[[     ╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝          ]],
	[[                                                    ]],
}

local logo = {
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  ]],
	[[  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ]],
	[[  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ]],
	[[  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ]],
	[[  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  ]],
	[[  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
	[[                                                      ]],
}

local uwuboy = {
	[[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣤⣤⣠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣞⢷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣳⣻⣿⡿⠛⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡺⣵⣻⣿⡇⠀⣿⡇⢐⠟⡿⠻⣿⢿⠋⢻⡿⠛⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡯⣞⣽⣿⡅⠀⠙⠀⣸⡀⠁⡀⠁⣸⠀⣺⡏⠀⣿⡯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⢯⢞⣿⣿⣿⣷⣶⣾⣿⣧⣼⣷⣴⣿⣀⠈⠁⣰⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢼⢽⢽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣳⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⣀⣃⡓⡑⡛⡛⠟⠿⠿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢰⢪⢮⣯⡾⣗⣯⢮⡢⡪⡨⡪⣐⢌⡐⠌⠌⢍⢙⢙⢛⠻⠻⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⡮⣺⣽⣳⣿⣿⣿⣽⡯⣯⣟⣞⣞⣮⣳⢽⢝⣞⣖⣵⣺⢽⣻⢶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣪⣪⡾⣟⣾⣻⣾⢿⣾⣷⣿⡿⣞⣷⣻⣾⢾⣻⣟⣷⡿⣾⣽⣿⣽⣿⣯⣿⣿⣿⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣜⢼⢾⣻⢯⢿⣽⣿⣿⣿⣿⣻⣿⣿⣿⣿⣻⣿⣿⢿⣻⣿⣿⣻⣽⣿⣷⣿⣿⣷⣿⣯⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⣜⣼⣿⡝⣎⢯⣿⢾⣿⣷⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣯⣿⣯⣿⣟⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢮⢺⣺⣿⢾⡇⣇⢿⣽⢿⣻⣿⣿⣿⣿⣽⣿⣿⡿⣿⣾⣿⣿⣽⣾⣿⣿⣽⣿⣿⣿⣟⣯⣗⣿⣿⣻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢪⣣⢿⣿⣻⡯⡪⣪⣻⣽⣿⣻⣿⣿⣷⣿⣿⣿⣷⣿⣿⣿⣷⣿⣿⣿⣟⣿⣟⣯⣷⣿⣿⣗⢧⣻⣯⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡎⣮⣾⡿⣟⣯⢗⢍⢮⣟⣿⣺⢿⣟⣿⣟⣿⣽⣾⣿⣿⣻⣷⣿⣿⣯⣿⣿⣻⣿⣻⣿⣟⣯⣯⡳⣕⢿⣿⣽⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⢜⢾⢷⡿⣿⢯⢃⠣⢵⣿⢯⣺⡻⡯⡿⡽⣿⣿⣿⣿⢿⣿⣿⢿⣯⣿⣿⢿⣿⣻⣿⣯⣿⣿⢺⣚⢮⡫⣿⣯⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}
local headers = { cool, robust, logo, uwuboy }

local function header_chars()
	math.randomseed(os.time())
	return headers[math.random(#headers)]
end

local function pick_color()
	local colors = { "String", "Identifier", "Number" }
	return colors[math.random(#colors)]
end

dashboard.section.header.val = header_chars()
dashboard.section.header.opts.hl = pick_color()

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("SPC ff", "  > Find file", ":Telescope find_files <CR>"),
	dashboard.button("SPC fg", "  > Live grep", ":Telescope live_grep<CR>"),
	dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button(
		"s",
		"  > Settings",
		":e $MYVIMRC | :cd %:p:h | :e ./lua/plugins.lua | :e ./lua/keymaps.lua | :e ./lua/settings.lua | :Neotree<CR>"
	),
	dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

--toggleterm-----------------------------------------
require("toggleterm").setup({
	open_mapping = [[<S-Tab>]],
	direction = "float",
	float_opts = {
		border = "curved",
	},
})

--feline-----------------------------------------
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
					-- file_readonly_icon = '  ',
					-- file_readonly_icon = '  ',
					-- file_readonly_icon = '  ',
					-- file_modified_icon = '',
					file_modified_icon = "",
					-- file_modified_icon = 'ﱐ',
					-- file_modified_icon = '',
					-- file_modified_icon = '',
					-- file_modified_icon = '',
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
			--icon = '慎',
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
			"packer",
			"neo-tree",
			"fugitive",
			"fugitiveblame",
		},
		buftypes = { "terminal" },
		bufnames = {},
	},
})
--window-picker-----------------------------------------------------------------------
--require'window-picker'.setup()

--neo-tree----------------------------------------------------------------------------
require("neo-tree").setup({
	close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
	popup_border_style = "rounded",
	source_selector = {
		statusline = true,
	},
	default_component_configs = {
		icon = {
			folder_closed = "",
			folder_open = "",
			folder_empty = "",
			-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
			-- then these will never be used.
			default = "",
			highlight = "NeoTreeFileIcon",
		},
		modified = {
			symbol = "[+]",
			highlight = "NeoTreeModified",
		},
		name = {
			trailing_slash = false,
			use_git_status_colors = true,
			highlight = "NeoTreeFileName",
		},
		git_status = {
			symbols = {
				-- Change type
				added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
				modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
				deleted = "✖", -- this can only be used in the git_status source
				renamed = "", -- this can only be used in the git_status source
				--	 Status type
				untracked = "",
				ignored = "",
				unstaged = "",
				staged = "",
				conflict = "",
			},
		},
	},
	window = {
		position = "left",
		width = 30,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		mappings = {
			--["<Space>"] = {
			--"toggle_node",
			--nowait = true,
			---- disable `nowait` if you have existing combos starting with this char that you want to use
			--},
			["<Space>"] = false,
			["l"] = function(state)
				local node = state.tree:get_node()
				if node.type == "directory" and not node:is_expanded() then
					state.commands["toggle_node"](state)
				end
			end,
			["j"] = "close_node",
			["o"] = function(state)
				state.commands["open"](state)
				local node = state.tree:get_node()
				if node.type ~= "directory" then
					vim.cmd("Neotree reveal")
				end
			end,
			["<Tab>"] = { "toggle_preview", config = { use_float = true } },
			["e"] = "open",
			["<cr>"] = function(state)
				state.commands["open"](state)
				local node = state.tree:get_node()
				if node.type ~= "directory" then
					vim.cmd("Neotree close")
				end
			end,

			["sh"] = "open_split",
			["sv"] = "open_vsplit",
			-- ["S"] = "split_with_window_picker",
			-- ["s"] = "vsplit_with_window_picker",
			["t"] = "open_tabnew",
			["w"] = "open_with_window_picker",
			["C"] = "close_node",
			["z"] = "close_all_nodes",
			--["Z"] = "expand_all_nodes",
			["a"] = {
				"add",
				-- some commands may take optional config options, see `:h neo-tree-mappings` for details
				config = {
					show_path = "none", -- "none", "relative", "absolute"
				},
			},
			["A"] = "add_directory", -- also accepts the optional config.show_path option like "add".
			["d"] = "delete",
			["r"] = "rename",
			["y"] = "copy_to_clipboard",
			["x"] = "cut_to_clipboard",
			["p"] = "paste_from_clipboard",
			["c"] = "copy",
			-- takes text input for destination, also accepts the optional config.show_path option like "add":
			-- ["c"] = {
			--  "copy",
			--  config = {
			--    show_path = "none" -- "none", "relative", "absolute"
			--  }
			--}
			["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
			["q"] = "close_window",
			["R"] = "refresh",
			["?"] = "show_help",
			["."] = "next_source",
			[","] = "prev_source",
		},
	},
	nesting_rules = {},
	filesystem = {
		follow_current_file = false, -- This will find and focus the file in the active buffer every
		use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
		-- instead of relying on nvim autocmd events.
		window = {
			mappings = {
				["<"] = "navigate_up",
				[">"] = "set_root",
				["H"] = "toggle_hidden",
				["/"] = "fuzzy_finder",
				["D"] = "fuzzy_finder_directory",
				["f"] = "filter_on_submit",
				["<c-x>"] = "clear_filter",
				["[g"] = "prev_git_modified",
				["]g"] = "next_git_modified",
			},
		},
	},
	buffers = {
		follow_current_file = true, -- This will find and focus the file in the active buffer every
		-- time the current file is changed while the tree is open.
		group_empty_dirs = true, -- when true, empty folders will be grouped together
		show_unloaded = true,
		window = {
			mappings = {
				["d"] = "buffer_delete",
				["<"] = "navigate_up",
				[">"] = "set_root",
			},
		},
	},
	git_status = {
		window = {
			--position = "float",
			mappings = {
				["A"] = "git_add_all",
				["gu"] = "git_unstage_file",
				["ga"] = "git_add_file",
				["gr"] = "git_revert_file",
				["gc"] = "git_commit",
				["gp"] = "git_push",
				["gg"] = "git_commit_and_push",
			},
		},
	},
})

--telescope------------------------------------------------------------------------
require("telescope").setup({
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "select_horizontal",
				["<C-v>"] = "select_vertical",
			},
			n = {
				["k"] = "move_selection_next",
				["i"] = "move_selection_previous",
				["<C-h>"] = "select_horizontal",
				["<C-v>"] = "select_vertical",
				["j"] = false,
			},
		},
	},
	pickers = {
		--Default configuration for builtin pickers goes here:
		--picker_name = {
		--picker_config_key = value,
		--...
		--}
		--Now the picker_config_key will be applied every time you call this
		--builtin picker
		live_grep = {
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "top",
				preview_cutoff = 20,
				width = 100,
				preview_width = 60,
				height = 30,
			},
		},
		buffers = {
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "top",
				preview_cutoff = 20,
				width = 100,
				preview_width = 60,
				height = 30,
			},
		},
		help_tags = {
			layout_strategy = "horizontal",
			layout_config = {
				prompt_position = "top",
				preview_cutoff = 20,
				width = 100,
				preview_width = 60,
				height = 30,
			},
		},
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	},
})

--treesitter---------------------------------------------------------------------------------------
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

--mason--------------------------------------------------------------------------------------------
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
		keymaps = {
			install_package = "e",
		},
	},
})

local lspservers = {
	"pyright",
	"rust_analyzer",
	"tsserver",
	"lua_ls",
	"vimls",
	"clangd",
	"bashls",
	"cmake",
	"prosemd_lsp",
}

require("mason-lspconfig").setup({
	ensure_installed = lspservers,
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"prettier", -- prettier formatter
		"stylua", -- lua formatter
		"isort", -- python formatter
		"black", -- python formatter
	},
})

--conform.nvim-----------------------------------------------------------------------------------------------
require("conform").setup({
	formatters_by_ft = {
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		lua = { "stylua" },
		python = { "isort", "black" },
	},
	-- format_on_save = {
	-- 	lsp_fallback = true,
	-- 	async = false,
	-- 	timeout_ms = 1000,
	-- },
})

--
-- lsp-config---------------------------------------------------------------------------------------------
--
--
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- Use a loop to conveniently call 'setup' on multiple servers and
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require("lspconfig")
for _, lsp in pairs(lspservers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end
lspconfig.lua_ls.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
local clang_capabilities = capabilities
clang_capabilities.offsetEncoding = { "utf-16" }
lspconfig.clangd.setup({
	capabilities = clang_capabilities,
})

--
--nvim-cmp--------------------------------------------------------------------------------------------------
--
--
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()
local cmp = require("cmp")
cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		format = function(entry, vim_item)
			-- Kind icons
			-- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
			-- Source
			vim_item.menu = ({
				buffer = "[Buffer]",
				nvim_lsp = "[LSP]",
				luasnip = "[LuaSnip]",
				cmdline = "[CMD]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-i>"] = cmp.mapping.select_prev_item(),
		["<C-k>"] = cmp.mapping.select_next_item(),
		["<C-Space>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.abort()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				})
				--cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				cmp.complete()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "copilot" },
		{ name = "buffer" },
	}),
})
-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "buffer" },
	}),
})
-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
		{ name = "cmdline" },
	}),
	matching = { disallow_symbol_nonprefix_matching = false },
})

--bufferline----------------------------------------------------------------
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

--copilot---------------------------------------------------------------------------
--vim.keymap.set('i', '<C-J>', 'copilot#Accept()')
--vim.cmd [[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]]
--vim.cmd [[let g:copilot_no_tab_map = v:true]]

require("copilot").setup({
	suggestion = { enabled = false },
	panel = { enabled = false },
})

--
--
--symbolsOutline-----------------------------------------------------------------------
--
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
--
--
--dropbar
--
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

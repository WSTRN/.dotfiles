require('gitsigns').setup {}

--tokyonight----------------------------------------
require("tokyonight").setup({
  	-- use the night style
  	style = "night",
	transparent = true,
  	sidebars = { "qf", "vista_kind", "terminal", "packer" },
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
local headers = {cool, robust, logo, uwuboy}

local function header_chars()
  math.randomseed(os.time())
  return headers[math.random(#headers)]
end
local function pick_color()
	local colors = {"String", "Identifier", "Number"}
	return colors[math.random(#colors)]
end
dashboard.section.header.val = header_chars()
dashboard.section.header.opts.hl = pick_color()

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button( "e",     "  > New file" , ":ene <BAR> startinsert <CR>"),
	dashboard.button( "SPC /", "  > Find file", ":Telescope find_files <CR>"),
	dashboard.button( "SPC g", "  > Live grep", ":Telescope <CR>"),
	dashboard.button( "r",     "  > Recent"   , ":Telescope oldfiles<CR>"),
	dashboard.button( "s",     "  > Settings" ,
					  ":e $MYVIMRC | :cd %:p:h | :e ./lua/settings.lua | :Neotree<CR> | <C-w>l"),
	dashboard.button( "q", 	   "  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])


--toggleterm-----------------------------------------
require("toggleterm").setup{
	open_mapping = [[<C-\>]],
	direction = "float",
	float_opts = {
		border = "curved",
	}
}

--feline-----------------------------------------
local colors = {
	bg = '#282c34',
	fg = '#abb2bf',
	yellow = '#e0af68',
	cyan = '#56b6c2',
	darkblue = '#081633',
	green = '#98c379',
	orange = '#d19a66',
	violet = '#a9a1e1',
	magenta = '#c678dd',
	blue = '#61afef',
	red = '#e86671'
}
local vi_mode_colors = {
	NORMAL = colors.green,
	INSERT = colors.red,
	VISUAL = colors.magenta,
	OP = colors.green,
	BLOCK = colors.blue,
	REPLACE = colors.violet,
	['V-REPLACE'] = colors.violet,
	ENTER = colors.cyan,
	MORE = colors.cyan,
	SELECT = colors.orange,
	COMMAND = colors.green,
	SHELL = colors.green,
	TERM = colors.green,
	NONE = colors.yellow
}
local function file_osinfo()
	local os = vim.bo.fileformat:upper()
	local icon
	if os == 'UNIX' then
		icon = '  '
	elseif os == 'MAC' then
		icon = '  '
	else
		icon = '  '
	end
	return icon .. os
end

--local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'
local comps = {
	vi_mode = {
		left = {
			provider = function()
				return '  ' .. vi_mode_utils.get_vim_mode() -- 
			end,
			hl = function()
				local val = {
					name = vi_mode_utils.get_mode_highlight_name(),
					fg = vi_mode_utils.get_mode_color(),
					-- fg = colors.bg
				}
				return val
			end,
			right_sep = ' '
		},
		right = {
			-- provider = '▊',
			--provider = '' ,
			hl = function()
				local val = {
					name = vi_mode_utils.get_mode_highlight_name(),
					fg = vi_mode_utils.get_mode_color()
				}
				return val
			end,
			left_sep = ' ',
			right_sep = ' '
		}
	},
	file = {
		info = {
			provider = {
				name = 'file_info',
				opts = {
					type = 'relative-short',
					file_readonly_icon = '  ',
					-- file_readonly_icon = '  ',
					-- file_readonly_icon = '  ',
					-- file_readonly_icon = '  ',
					-- file_modified_icon = '',
					file_modified_icon = '',
					-- file_modified_icon = 'ﱐ',
					-- file_modified_icon = '',
					-- file_modified_icon = '',
					-- file_modified_icon = '',
				}
			},
			hl = {
				fg = colors.blue,
				style = 'bold'
			}
		},
		encoding = {
			provider = 'file_encoding',
			left_sep = ' ',
			hl = {
				fg = colors.violet,
				style = 'bold'
			}
		},
		type = {
			provider = 'file_type'
		},
		os = {
			provider = file_osinfo,
			--left_sep = ' ',
			hl = {
				fg = colors.violet,
				style = 'bold'
			}
		},
		position = {
			provider = 'position',
			left_sep = ' ',
			hl = {
				fg = colors.cyan,
				-- style = 'bold'
			}
		},
	},
	left_end = {
		provider = function() return '' end,
		hl = {
			fg = colors.bg,
			bg = colors.blue,
		}
	},
	line_percentage = {
		provider = 'line_percentage',
		left_sep = ' ',
		hl = {
			style = 'bold'
		}
	},
	scroll_bar = {
		provider = 'scroll_bar',
		left_sep = ' ',
		hl = {
			fg = colors.blue,
			style = 'bold'
		}
	},
	lsp = {
		name = {
			provider = 'lsp_client_names',
			-- left_sep = ' ',
			--right_sep = ' ',
			icon = ' ',
			--icon = '慎',
			hl = {
				fg = colors.yellow
			}
		}
	},
	git = {
		branch = {
			provider = 'git_branch',
			--icon = ' ',
			icon = ' ',
			left_sep = ' ',
			hl = {
				fg = colors.violet,
				style = 'bold'
			},
		},
		add = {
			provider = 'git_diff_added',
			hl = {
				fg = colors.green
			}
		},
		change = {
			provider = 'git_diff_changed',
			hl = {
				fg = colors.orange
			}
		},
		remove = {
			provider = 'git_diff_removed',
			hl = {
				fg = colors.red
			}
		}
	}
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
require 'feline'.setup {
	colors = { bg = colors.bg, fg = colors.fg },
	components = components,
	vi_mode_colors = vi_mode_colors,
	force_inactive = {
		filetypes = {
			'packer',
			'neo-tree',
			'fugitive',
			'fugitiveblame'
		},
		buftypes = { 'terminal' },
		bufnames = {}
	}
}
--window-picker-----------------------------------------------------------------------
--require'window-picker'.setup()

--neo-tree----------------------------------------------------------------------------
require("neo-tree").setup({
	close_if_last_window = true,-- Close Neo-tree if it is the last window left in the tab
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
			highlight = "NeoTreeFileIcon"
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
				added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
				modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
				deleted   = "✖", -- this can only be used in the git_status source
				renamed   = "", -- this can only be used in the git_status source
				--	 Status type
				untracked = "",
				ignored   = "",
				unstaged  = "",
				staged    = "",
				conflict  = "",
			}
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
			["l"] = function (state)
				local node = state.tree:get_node()
				if node.type == "directory" and not node:is_expanded() then
					state.commands["toggle_node"](state)
				end
			end,
			["j"] = "close_node",
			["o"] = function (state)
				state.commands["open"](state)
				vim.cmd("Neotree reveal")
			end,

			["<Tab>"] = { "toggle_preview", config = { use_float = true } },
			["<cr>"] = "open",
			["e"] = function (state)
				state.commands["open"](state)
				vim.cmd("Neotree close")
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
				}
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
		}
	},
	nesting_rules = {},
	filesystem = {
		follow_current_file = false, -- This will find and focus the file in the active buffer every
		use_libuv_file_watcher = true, -- This will use the OS level file watchers to detect changes
		-- instead of relying on nvim autocmd events.
		window = {
			mappings = {
				["<bs>"] = "navigate_up",
				["."] = "set_root",
				["H"] = "toggle_hidden",
				["/"] = "fuzzy_finder",
				["D"] = "fuzzy_finder_directory",
				["f"] = "filter_on_submit",
				["<c-x>"] = "clear_filter",
				["[g"] = "prev_git_modified",
				["]g"] = "next_git_modified",
			}
		}
	},
	buffers = {
		follow_current_file = true, -- This will find and focus the file in the active buffer every
		-- time the current file is changed while the tree is open.
		group_empty_dirs = true, -- when true, empty folders will be grouped together
		show_unloaded = true,
		window = {
			mappings = {
				["d"] = "buffer_delete",
				["<bs>"] = "navigate_up",
				["."] = "set_root",
			}
		},
	},
	git_status = {
		window = {
			--position = "float",
			mappings = {
				["A"]  = "git_add_all",
				["gu"] = "git_unstage_file",
				["ga"] = "git_add_file",
				["gr"] = "git_revert_file",
				["gc"] = "git_commit",
				["gp"] = "git_push",
				["gg"] = "git_commit_and_push",
			}
		}
	}
})

--telescope------------------------------------------------------------------------
require('telescope').setup {
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
				["j"] = false
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
	}
}

--treesitter---------------------------------------------------------------------------------------
require 'nvim-treesitter.configs'.setup {

	ensure_installed = {
		"lua",
		"vim",
		"c",
		"go",
		"python",
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
}
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 99

--require("nvim-lsp-installer").setup {
	--automatic_installation = true,
	--ui = {
		--icons = {
			--server_installed = "✓",
			--server_pending = "➜",
			--server_uninstalled = "✗"
		--},
		--keymaps = {
			---- Keymap to expand a server in the UI
			--toggle_server_expand = "<CR>",
			---- Keymap to install the server under the current cursor position
			--install_server = "e",
			---- Keymap to reinstall/update the server under the current cursor position
			--update_server = "u",
			---- Keymap to check for new version for the server under the current cursor position
			--check_server_version = "c",
			---- Keymap to update all installed servers
			--update_all_servers = "U",
			---- Keymap to check which installed servers are outdated
			--check_outdated_servers = "C",
			---- Keymap to uninstall a server
			--uninstall_server = "X",
		--},
	--}
--}
--mason--------------------------------------------------------------------------------------------
require('mason').setup({
	ui = {
		icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
		keymaps = {
			install_package = "e",
		}
	}
})

local lspservers = {
	'pyright',
	'rust_analyzer',
	'tsserver',
	'sumneko_lua',
	'vimls',
	'clangd',
	'bashls',
	'cmake',
	'prosemd_lsp',
	'golangci_lint_ls',
}

require('mason-lspconfig').setup({
	ensure_installed = lspservers
})

-- lsp-config--------------------------------------------------------------------------
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	-- Mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', 'gDD', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
	vim.keymap.set('n', 'ge', vim.diagnostic.open_float, bufopts)
	vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev, bufopts)
	vim.keymap.set('n', 'g]', vim.diagnostic.goto_next, bufopts)
	vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, bufopts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require('lspconfig')
for _, lsp in pairs(lspservers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end
lspconfig.sumneko_lua.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { 'vim' }
			},
		}
	}
}

----------------------------------------------------------------------------------------------------
-- luasnip setup
-- Setup nvim-cmp.
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require 'luasnip'
require("luasnip.loaders.from_vscode").lazy_load()
local cmp = require 'cmp'

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			--vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		--['<C-u>'] = cmp.mapping.scroll_docs(-4),
		--['<C-d>'] = cmp.mapping.scroll_docs(4),
		--['<CR>'] = cmp.mapping.confirm {
			--behavior = cmp.ConfirmBehavior.Replace,
			--select = true,
		--},

		--testing??????
		--['<Esc>'] = cmp.mapping.abort({ "i", "s" }),
		--or
		--['<C-e>'] = cmp.mapping.abort({ "i", "s" }),
		--
		--["<Esc>"] = cmp.mapping(function (fallback)
		--if cmp.visible() then
		--cmp.mapping.close()
		--else
		--fallback()
		--end
		--end, { "i", "s" }),
		--
		--["<Tab>"] = cmp.mapping(function(fallback)
			--if cmp.visible() then
				--cmp.select_next_item()
			--elseif luasnip.expand_or_jumpable() then
				--luasnip.expand_or_jump()
			--elseif has_words_before() then
				--cmp.complete()
			--else
				--fallback()
			--end
		--end, { "i", "s" }),
		--
		['<C-u>'] = cmp.mapping.select_prev_item(),
		['<C-d>'] = cmp.mapping.select_next_item(),
		["<C-Space>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.abort()
			elseif has_words_before() then
				cmp.complete()
				--cmp.select_next_item()
			else
				fallback()
			end
		end, {"i", "s"}),

		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.confirm{
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = cmp.config.sources(
	{
		{ name = 'nvim_lsp' },
		--{ name = 'vsnip' }, -- For vsnip users.
		{ name = 'luasnip' }, -- For luasnip users.
		--{ name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
	},
	{
		{ name = 'buffer' },
	})
})
-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = 'buffer' },
	})
})
-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})
-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})


--bufferline----------------------------------------------------------------
require('bufferline').setup {
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
		buffer_close_icon = '', --'',
		modified_icon = '●',
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
}
require('scope').setup()

--copilot---------------------------------------------------------------------------
--vim.keymap.set('i', '<C-J>', 'copilot#Accept()')
--vim.cmd [[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]]
--vim.cmd [[let g:copilot_no_tab_map = v:true]]



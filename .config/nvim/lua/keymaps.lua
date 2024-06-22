local wk = require("which-key")
wk.register({
		["<leader>n"] = { "<cmd>tabe<cr>", "new tab" },
		["<leader>]"] = { "<cmd>+tabnext<cr>", "next tab" },
		["<leader>["] = { "<cmd>-tabnext<cr>", "prev tab" },
		["<leader>="] = { "<cmd>BufferLineCycleNext<cr>", "next buffer" },
		["<leader>-"] = { "<cmd>BufferLineCyclePrev<cr>", "prev buffer" },
		["<leader>1"] = { "<cmd>lua require('bufferline').go_to_buffer(1, true)<cr>", "go buffer 1" },
		["<leader>2"] = { "<cmd>lua require('bufferline').go_to_buffer(2, true)<cr>", "go buffer 2" },
		["<leader>3"] = { "<cmd>lua require('bufferline').go_to_buffer(3, true)<cr>", "go buffer 3" },
		["<leader>4"] = { "<cmd>lua require('bufferline').go_to_buffer(4, true)<cr>", "go buffer 4" },
		["<leader>5"] = { "<cmd>lua require('bufferline').go_to_buffer(5, true)<cr>", "go buffer 5" },
		["<leader>6"] = { "<cmd>lua require('bufferline').go_to_buffer(6, true)<cr>", "go buffer 6" },
		["<leader>7"] = { "<cmd>lua require('bufferline').go_to_buffer(7, true)<cr>", "go buffer 7" },
		["<leader>8"] = { "<cmd>lua require('bufferline').go_to_buffer(8, true)<cr>", "go buffer 8" },
		["<leader>9"] = { "<cmd>lua require('bufferline').go_to_buffer(9, true)<cr>", "go buffer 9" },
		["<leader>0"] = { "<cmd>lua require('bufferline').go_to_buffer(-1, true)<cr>", "go last buffer" },
		["<leader><Backspace>"] = { "<cmd>BufferLinePickClose<cr>", "pick close buffer" },
		["<leader>p"] = { "<cmd>BufferLinePick<cr>", "pick buffer" },

		["<leader>u"] = { "<cmd>UndotreeToggle<cr>", "open undo tree" },

		["<leader>f"] = { "<cmd>Telescope live_grep<cr>", "Telescope live grep" },
		["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Telescope find file" },
		["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Telescope find buffer" },
		["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Telescope find help tags" },
		["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", "Telescope find keymaps" },

		["<leader>m"] = { "<cmd>SymbolsOutline<cr>", "symbols outline" },
		["<leader>v"] = { function() require('dropbar.api').pick() end, "dropbar pick" },

		["<leader>t"] = { "<cmd>Neotree reveal toggle<cr>", "Neotree" },
		["<leader><Space>"] = { function() require("flash").jump() end, "Flash" },
		["<leader>s"] = { function() require("flash").treesitter() end, "Flash" },

	},
	{ mode = "n", })

wk.register({
		["<leader>j"] = { function() require("flash").jump() end, "Flash" },
	},
	{ mode = "v", })

if vim.g.vscode then
	local keymap = vim.keymap.set
	local opts = { noremap = true, silent = true }

	keymap({ "n", "v" }, "<Space>j", function()
		require("flash").jump()
	end, opts)
else
	local wk = require("which-key")
	wk.register({
		["<leader>"] = {
			name = "buffers&tabes",
			["n"] = { "<cmd>tabe<cr>", "new tab" },
			["]"] = { "<cmd>+tabnext<cr>", "next tab" },
			["["] = { "<cmd>-tabnext<cr>", "prev tab" },
			["="] = { "<cmd>BufferLineCycleNext<cr>", "next buffer" },
			["-"] = { "<cmd>BufferLineCyclePrev<cr>", "prev buffer" },
			["1"] = {
				function()
					require("bufferline").go_to_buffer(1, true)
				end,
				"go buffer 1",
			},
			["2"] = {
				function()
					require("bufferline").go_to_buffer(2, true)
				end,
				"go buffer 2",
			},
			["3"] = {
				function()
					require("bufferline").go_to_buffer(3, true)
				end,
				"go buffer 3",
			},
			["4"] = {
				function()
					require("bufferline").go_to_buffer(4, true)
				end,
				"go buffer 4",
			},
			["5"] = {
				function()
					require("bufferline").go_to_buffer(5, true)
				end,
				"go buffer 5",
			},
			["6"] = {
				function()
					require("bufferline").go_to_buffer(6, true)
				end,
				"go buffer 6",
			},
			["7"] = {
				function()
					require("bufferline").go_to_buffer(7, true)
				end,
				"go buffer 7",
			},
			["8"] = {
				function()
					require("bufferline").go_to_buffer(8, true)
				end,
				"go buffer 8",
			},
			["9"] = {
				function()
					require("bufferline").go_to_buffer(9, true)
				end,
				"go buffer 9",
			},
			["0"] = {
				function()
					require("bufferline").go_to_buffer(-1, true)
				end,
				"go last buffer",
			},
			["<Backspace>"] = {
				function()
					vim.cmd("BufferLinePickClose")
				end,
				"pick close buffer",
			},
			["<Space>"] = { "<cmd>BufferLinePick<cr>", "pick buffer" },
		},
		["<leader>f"] = {
			name = "Telescope",
			["g"] = { "<cmd>Telescope live_grep<cr>", "Telescope live grep" },
			["f"] = { "<cmd>Telescope find_files<cr>", "Telescope find file" },
			["b"] = { "<cmd>Telescope buffers<cr>", "Telescope find buffer" },
			["h"] = { "<cmd>Telescope help_tags<cr>", "Telescope find help tags" },
			["k"] = { "<cmd>Telescope keymaps<cr>", "Telescope find keymaps" },
			["r"] = { "<cmd>Telescope oldfiles<cr>", "Telescope find recent" },
		},
		["<leader>u"] = { "<cmd>UndotreeToggle<cr>", "open undo tree" },
		["<leader>m"] = { "<cmd>Outline<CR>", "Toggle syntax tree" },
		["<leader>v"] = {
			function()
				require("dropbar.api").pick()
			end,
			"dropbar pick",
		},
		["<leader>t"] = { "<cmd>Neotree reveal toggle<cr>", "Neotree" },
		["<leader>p"] = {
			function()
				require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 })
			end,
			"Format",
		},
		["<leader>j"] = {
			function()
				require("flash").jump()
			end,
			"Flash",
		},
		["<leader>s"] = {
			function()
				require("flash").treesitter()
			end,
			"Flash",
		},

		["g"] = {
			name = "lsp",
			["D"] = { vim.lsp.buf.declaration, "go to declaration" },
			["d"] = { vim.lsp.buf.definition, "go to definition" },
			["r"] = { vim.lsp.buf.references, "go to references" },
			["h"] = { vim.lsp.buf.hover, "hover" },
			["i"] = { vim.lsp.buf.implementation, "go to implementation" },
			["td"] = { vim.lsp.buf.type_definition, "go to type definition" },
			["e"] = { vim.diagnostic.open_float, "open diagnostic" },
			["p"] = { vim.diagnostic.goto_prev, "prev diagnostic" },
			["n"] = { vim.diagnostic.goto_next, "next diagnostic" },
		},
	}, { mode = "n" })

	wk.register({
		["<leader>j"] = {
			function()
				require("flash").jump()
			end,
			"Flash",
		},
		["<leader>p"] = {
			function()
				require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 })
			end,
			"Format",
		},
	}, { mode = "v" })
end

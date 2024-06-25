return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
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
		end,
	},
}

return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<S-Tab>]],
				direction = "horizontal",
				float_opts = {
					border = "curved",
				},
				insert_mappings = false,
			})
		end,
	},
}

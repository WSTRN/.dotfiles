local lspservers = {
	"pyright",
	"rust_analyzer",
	"ts_ls",
	"lua_ls",
	"vimls",
	"clangd",
	"bashls",
	"cmake",
	"prosemd_lsp",
}
local mason_tools = {
	"prettier", -- prettier formatter
	"stylua", -- lua formatter
	"isort", -- python formatter
	"black", -- python formatter
}

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local capabilities =
				require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

			local lspconfig = vim.lsp.config
			for _, lsp in pairs(lspservers) do
				vim.lsp.config(lsp, { capabilities = capabilities })
			end
			-- add vim global variable
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					["Lua"] = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			-- fix clangd errors
			local clang_capabilities = capabilities
			clang_capabilities.offsetEncoding = { "utf-16" }
			vim.lsp.config("clangd", {
				capabilities = clang_capabilities,
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
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
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = lspservers,
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = mason_tools,
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
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
		end,
	},
}

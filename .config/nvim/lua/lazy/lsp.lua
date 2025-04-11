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

			local lspconfig = require("lspconfig")
			for _, lsp in pairs(lspservers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end
			-- add vim global variable
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
						hint = {
							enable = true, -- inlay hints
						},
					},
				},
			})
			-- add inlay hints for rust
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						inlayHints = {
							bindingModeHints = {
								enable = false,
							},
							chainingHints = {
								enable = true,
							},
							closingBraceHints = {
								enable = true,
								minLines = 25,
							},
							closureReturnTypeHints = {
								enable = "never",
							},
							lifetimeElisionHints = {
								enable = "never",
								useParameterNames = false,
							},
							maxLength = 25,
							parameterHints = {
								enable = true,
							},
							reborrowHints = {
								enable = "never",
							},
							renderColons = true,
							typeHints = {
								enable = true,
								hideClosureInitialization = false,
								hideNamedConstructor = false,
							},
						},
					},
				},
			})
			-- fix clangd errors
			local clang_capabilities = capabilities
			clang_capabilities.offsetEncoding = { "utf-16" }
			lspconfig.clangd.setup({
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
	{
		"MysticalDevil/inlay-hints.nvim",
		event = "LspAttach",
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("inlay-hints").setup()
		end,
	},
}

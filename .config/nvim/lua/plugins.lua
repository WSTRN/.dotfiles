-- to bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lazy_keys = require("lazy.view.config").keys
local lazy_keys_bindings = {
	{ func = "hover", key = "O" },
}
for _, v in ipairs(lazy_keys_bindings) do
	lazy_keys[v.func] = v.key
end

local lazy_cmd = require("lazy.view.config").commands
local lazy_cmd_bindings = {
	{ cmd = "install", key = "E" },
}
for _, v in ipairs(lazy_cmd_bindings) do
	lazy_cmd[v.cmd].key = v.key
	lazy_cmd[v.cmd].key_plugin = v.key
end
--vim.keymap.set("n", "<leader>pm", ":Lazy<CR>", { noremap = true })

--plugins-------------------------------------------------------------------------
local plugins = {
	require("lazy.colors"),
	require("lazy.dashboard"),
	require("lazy.term"),
	require("lazy.misc"),
	require("lazy.window"),
	require("lazy.filebrowser"),
	require("lazy.search"),
	require("lazy.syntaxtree"),
	require("lazy.lsp"),
	require("lazy.completion"),
}

local opts = {}

require("lazy").setup(plugins, opts)

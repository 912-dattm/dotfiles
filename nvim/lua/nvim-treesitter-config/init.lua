local status_ok, nvim_treesitter_config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

nvim_treesitter_config.setup({
	ensure_installed = { "html", "javascript", "typescript", "lua" },
	sync_install = false,

	autotag = {
		enable = true,
		filetypes = { "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "tsx", "jsx" },
	},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},

	indent = {
		enable = false,
	},
})

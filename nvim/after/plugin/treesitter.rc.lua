local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	ensure_installed = {
		"javascript",
		"typescript",
		"tsx",
		"fish",
		"json",
		"yaml",
		"css",
		"html",
	},
	autotag = {
		enable = true,
	},
}

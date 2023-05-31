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
		--filetypes = {
		--'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
		--'css', 'lua', 'xml', 'php', 'markdown'
		--},
	},
}

--local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

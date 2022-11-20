local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

--require('plenary.reload').reload_module('lualine', true)
lualine.setup({
	options = {
		theme = "dracula",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { { "filename", path = 1 } },
	},

	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { { "filename", path = 1 } },
	},
})

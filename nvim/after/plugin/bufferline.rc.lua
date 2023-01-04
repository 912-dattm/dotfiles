local status, bufferline = pcall(require, "bufferline")
if (not status) then return end


bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = 'slant',
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
		max_name_length = 50,

		name_formatter = function(tab) -- tab contains a "name", "path" and "tabnr"
			local regx = '([^/]+)';
			local tbl = {};
			for x in string.gmatch(tab.path, regx) do
				table.insert(tbl, x)
			end

			local name = tbl[#tbl];

			if (#tbl > 1) then
				name = tbl[#tbl - 1] .. "/" .. tbl[#tbl];
			end

			return string.format("%s", name)
		end,
	},
	highlights = {
		separator = {
			fg = '#29263c',
			bg = '#29263c',
		},
		separator_selected = {
			fg = '#29263c',
			bg = '#61ffca',
		},
		background = {
			fg = '#edecee',
			bg = '#29263c',
		},
		buffer_selected = {
			fg = '#29263c',
			bg = '#61ffca',
			bold = true,
		},
		fill = {
			--fg = '#61ffca'
		},

		modified = {
			fg = '#edecee',
			bg = '#29263c',
		},
		modified_visible = {
			fg = '#edecee',
			bg = '#29263c',
		},
		modified_selected = {
			fg = '#29263c',
			bg = '#61ffca',
		},

		duplicate = {
			fg = '#edecee',
			bg = '#29263c',
			italic = true
		},
		duplicate_selected = {
			fg = '#29263c',
			bg = '#61ffca',
			italic = true
		},
	},
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

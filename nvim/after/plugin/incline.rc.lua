local status, incline = pcall(require, "incline")
if (not status) then return end

incline.setup({
	debounce_threshold = {
		falling = 50,
		rising = 10
	},
	hide = {
		cursorline = false,
		focused_win = false,
		only_win = false
	},
	highlight = {
		groups = {
			InclineNormal = {
				default = true,
				group = "NormalFloat"
			},
			InclineNormalNC = {
				default = true,
				group = "NormalFloat"
			}
		}
	},
	ignore = {
		buftypes = "special",
		filetypes = {},
		floating_wins = true,
		unlisted_buffers = true,
		wintypes = "special"
	},
	render = function(props)
		local bufname = vim.api.nvim_buf_get_name(props.buf)

		if bufname == "" then
			return "[No name]"
		else
			local path = vim.fn.fnamemodify(bufname, ":.");
			local regx = '([^/]+)';
			local tbl = {};
			for x in string.gmatch(path, regx) do
				table.insert(tbl, x)
			end

			local name = tbl[#tbl];

			if (#tbl > 1) then
				name = tbl[#tbl - 1] .. "/" .. tbl[#tbl];
			end


			return name
		end
	end,
	window = {
		margin = {
			horizontal = 1,
			vertical = 1
		},
		options = {
			signcolumn = "no",
			wrap = false
		},
		padding = 1,
		padding_char = " ",
		placement = {
			horizontal = "right",
			vertical = "top"
		},
		width = "fit",
		winhighlight = {
			active = {
				EndOfBuffer = "None",
				Normal = "InclineNormal",
				Search = "None"
			},
			inactive = {
				EndOfBuffer = "None",
				Normal = "InclineNormalNC",
				Search = "None"
			}
		},
		zindex = 50
	}
})

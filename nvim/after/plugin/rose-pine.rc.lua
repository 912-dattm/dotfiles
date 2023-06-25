local status, rosepine = pcall(require, "rose-pine")
if (not status) then return end

rosepine.setup({
	variant = 'main',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = true,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,
})

vim.cmd.colorscheme("rose-pine")

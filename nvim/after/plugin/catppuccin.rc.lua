local status, catppuccin = pcall(require, "catppuccin")
if (not status) then return end

catppuccin.setup({
	transparent_background = true,
	no_italic = true,
	no_bold = true,
})

vim.cmd.colorscheme("catppuccin-mocha")

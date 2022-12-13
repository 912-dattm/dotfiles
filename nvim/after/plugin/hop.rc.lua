local status, hop = pcall(require, "hop")
if (not status) then return end

local map = vim.api.nvim_set_keymap

hop.setup({ keys = "etovxqpdygfblzhckisuran", multi_windows = true })

map("n", "<leader>d", ":HopChar2<CR>", { noremap = true, silent = false })
map("n", "<leader>hw", ":HopWord<CR>", { noremap = true, silent = false })
map("n", "<leader>c", ":HopChar1<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap(
	"n",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
	,
	{}
)
vim.api.nvim_set_keymap(
	"n",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
	,
	{}
)
vim.api.nvim_set_keymap(
	"",
	"t",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
	,
	{}
)
vim.api.nvim_set_keymap(
	"",
	"T",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
	,
	{}
)

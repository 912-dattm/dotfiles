local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
	symbol_in_winbar = {
		enable = false
	},

	--server_filetype_map = {
	--typescript = 'typescript'
	--}
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', '<leader>rn', '<Cmd>Lspsaga rename<CR>', opts)

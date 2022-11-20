local status_ok, renamer = pcall(require, "renamer")
if not status_ok then
	return
end

renamer.setup {
    title = 'Rename',
}

vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

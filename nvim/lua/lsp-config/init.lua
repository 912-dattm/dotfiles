vim.api.nvim_set_keymap(
	"n",
	"<Leader>p",
	"<cmd>lua vim.lsp.buf.format { async = true }<CR>",
	{ noremap = true, silent = true }
)
local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("/lsp-config/cmp")
require("/lsp-config/diagnostic_signs")
require("/lsp-config/lsp-installer")
require("/lsp-config/null-ls")
require("/lsp-config/handlers").setup()
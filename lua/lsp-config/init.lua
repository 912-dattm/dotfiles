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

lspconfig["tsserver"].setup({
	on_attach = require("lsp-config.handlers").on_attach,
	capabilities = require("lsp-config.handlers").capabilities,
})

lspconfig["cssls"].setup({
	on_attach = require("lsp-config.handlers").on_attach,
	capabilities = require("lsp-config.handlers").capabilities,

	settings = {
		css = {
			lint = {
				unknownAtRules = "ignore",
			},
		},
		less = {
			lint = {
				duplicateProperties = "warning",
			},
		},
	},
})

lspconfig["sumneko_lua"].setup({
	on_attach = require("lsp-config.handlers").on_attach,
	capabilities = require("lsp-config.handlers").capabilities,
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

require("/lsp-config/cmp")
require("/lsp-config/diagnostic_signs")
require("/lsp-config/lsp-installer")
require("/lsp-config/null-ls")
--require("/lsp-config/handlers").setup()

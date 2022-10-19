local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
	debug = false,
	sources = {
		--null_ls.builtins.diagnostics.eslint_d,
		--null_ls.builtins.code_actions.eslint_d,
		formatting.prettierd.with({
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"jsonc",
				"yaml",
				"markdown",
				"graphql",
				"handlebars",
			},
		}),

		--formatting.eslint,

		--formatting.prettier.with({
		--extra_args = {
		--"--no-semi",
		--"--arrow-parens=avoid",
		--"--single-quote=false",
		--"--jsx-single-quote=false",
		--"--tab-width=4",
		--},
		--}),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
	},

	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})

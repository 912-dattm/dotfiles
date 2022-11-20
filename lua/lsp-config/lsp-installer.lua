--local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
--if not status_ok then
	--return
--end

--lsp_installer.on_server_ready(function(server)
	--local opts = {
		--on_attach = require("/lsp-config.handlers").on_attach,
		--capabilities = require("/lsp-config.handlers").capabilities,
	--}

	--if server.name == "sumneko_lua" then
		--local sumneko_opts = require("/lsp-config/settings/sumneko_lua")
		--opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	--end

	--if server.name == "cssls" then
		--local cssls_opts = require("/lsp-config.settings.cssls")
		--opts = vim.tbl_deep_extend("force", cssls_opts, opts)
	--end

	--server:setup(opts)
--end)

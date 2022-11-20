local status_ok, mini_indentscope = pcall(require, "mini.indentscope")
if not status_ok then
	return
end

mini_indentscope.setup({
	mappings = {
		goto_top = "<M-k>",
		goto_bottom = "<M-j>",
	},
})

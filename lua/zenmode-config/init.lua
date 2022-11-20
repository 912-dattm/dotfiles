local status_ok, zen_mode = pcall(require, "zen_mode")
if not status_ok then
	return
end

zen_mode.setup({})

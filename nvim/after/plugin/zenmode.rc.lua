local status, zendMode = pcall(require, "zen-mode")
if (not status) then return end

zendMode.setup({
})

vim.keymap.set("n", "<leader>m", "<cmd>:ZenMode<cr>")

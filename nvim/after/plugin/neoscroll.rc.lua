local status, neoscroll = pcall(require, "neoscroll")
if (not status) then return end

local neoscroll_config = require("neoscroll.config")

neoscroll.setup({
	mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', 'zt', 'zz', 'zb' },
})

local t    = {}
t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '150' } }
t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '150' } }
t['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', '200' } }
t['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '200' } }
t['zt']    = { 'zt', { '150' } }
t['zz']    = { 'zz', { '150' } }
t['zb']    = { 'zb', { '150' } }
t['<C-k>'] = { "scroll", { "-0.30", "false", "110" } }
t['<C-j>'] = { "scroll", { "0.30", "false", "110" } }

neoscroll_config.set_mappings(t)

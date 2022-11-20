local map = vim.api.nvim_set_keymap

--command! -nargs=0 Prettier :CocCommand prettier.formatFile
vim.cmd([[
nnoremap <silent> <M-S-j> :CocNext<cr>
nnoremap <silent> <M-S-k> :CocPrev<cr>
nmap <silent> <Leader>je <Plug>(coc-diagnostic-next-error)
nmap <silent> <Leader>ke <Plug>(coc-diagnostic-prev-error)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> ge <Plug>(coc-definition)
nmap <silent> gs :split<CR><Plug>(coc-definition)
nmap <silent> gv :vsplit<CR><Plug>(coc-definition)
nmap <silent> go :tabnew<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)

inoremap <silent><expr> <c-space> coc#refresh()
]])

--vim.api.nvim_set_keymap("n", "<leader>p", ":Prettier<CR>", {noremap = false, silent = true})
vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})

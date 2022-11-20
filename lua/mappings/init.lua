local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

map("n", "<C-s>", ":wa<CR>", { noremap = false, silent = false })
map("n", "<leader>r", ":luafile %<CR>", { noremap = false, silent = false })
map("n", "<leader>o", 'o <Esc>0"_D', { noremap = false, silent = false })
map("n", "<leader>s", ":%s/<C-r><C-w>/", { noremap = false, silent = false })
map("v", "<S-k>", ":m-2<CR>gv=gv", { noremap = false, silent = false })
map("v", "<S-j>", ":m'>+<CR>gv=gv", { noremap = false, silent = false })

map("n", "<leader>1", "1gt", { noremap = true, silent = false })
map("n", "<leader>2", "2gt", { noremap = true, silent = false })
map("n", "<leader>3", "3gt", { noremap = true, silent = false })
map("n", "<leader>4", "4gt", { noremap = true, silent = false })
map("n", "<leader>5", "5gt", { noremap = true, silent = false })
map("n", "<leader>0", ":tablast<CR>", { noremap = true, silent = false })

map("n", "<leader>zm", ":ZenMode<CR>", { noremap = false, silent = false })
map("n", "<leader>zc", ":close<CR>", { noremap = false, silent = false })

map("n", "ma", ":MtaJumpToOtherTag<CR>", { noremap = false, silent = false })

local keymap = vim.keymap
vim.g.mapleader = " "

keymap.set('n', 'x', '"_x')
keymap.set('n', '<C-a>', 'gg<S-v>G')
keymap.set("n", "<C-s>", ":wa<CR>")
keymap.set("n", "<leader>r", ":luafile %<CR>")
keymap.set("n", "<leader>o", 'o <Esc>0"_D')
keymap.set("n", "<leader>s", ":%s/<C-r><C-w>/")
keymap.set("v", "<S-k>", ":m-2<CR>gv=gv")
keymap.set("v", "<S-j>", ":m'>+<CR>gv=gv")

keymap.set("n", "<ESC>", ": noh<CR>")

keymap.set("n", "<leader>1", "1gt")
keymap.set("n", "<leader>2", "2gt")
keymap.set("n", "<leader>3", "3gt")
keymap.set("n", "<leader>4", "4gt")
keymap.set("n", "<leader>5", "5gt")
keymap.set("n", "<leader>6", "6gt")
keymap.set("n", "<leader>7", "7gt")
keymap.set("n", "<leader>8", "8gt")
keymap.set("n", "<leader>9", "9gt")
keymap.set("n", "<leader>0", ":tablast<CR>")

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end
local map = vim.api.nvim_set_keymap

map("n", "<S-e>", ":NvimTreeFindFile<CR>", { noremap = false, silent = true })
map("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = false, silent = true })
map("n", "<S-w>", ":NvimTreeFocus<CR>", { noremap = false, silent = true })

vim.cmd([[set shell=/bin/bash]])

vim.gnvim_tree_create_in_closed_folder = 1

nvim_tree.setup({
	filters = {
		custom = { ".git", "node_modules", ".DS_Store" },
	},

	git = {
		enable = false,
		ignore = false,
		timeout = 1,
	},

	trash = {
		cmd = "trash put",
		require_confirm = true,
	},

	view = {
		width = 50,
		mappings = {
			list = {
				{ key = "<C-e>", action = "" },
				{ key = "a", action = "" },
				{ key = "d", action = "" },
				{ key = "D", action = "" },
				{ key = "p", action = "parent_node" },
				{ key = "c", action = "" },
				{ key = "r", action = "" },
				{ key = "<C-v>", action = "" },
				{ key = "<C-x>", action = "" },
				{ key = "<C-t>", action = "" },

				{ key = "s", action = "vsplit" },
				{ key = "v", action = "split" },
				{ key = "t", action = "tabnew" },

				{ key = "x", action = "close_node" },

				{ key = "ma", action = "create" },
				{ key = "md", action = "remove" },
				{ key = "mD", action = "trash" },
				{ key = "mm", action = "cut" },
				{ key = "mr", action = "rename" },
				{ key = "mc", action = "copy" },
				{ key = "mp", action = "paste" },
			},
		},
	},

	renderer = {
		icons = {
			show = {
				git = false,
				folder = true,
				file = true,
				folder_arrow = true,
			},
		},
		highlight_git = false,
	},
})

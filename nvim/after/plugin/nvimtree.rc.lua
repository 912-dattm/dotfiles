local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

local map = vim.api.nvim_set_keymap

map("n", "<S-e>", ":NvimTreeFindFile<CR>", { noremap = false, silent = true })
map("n", "<C-e>", ":NvimTreeToggle<CR>", { noremap = false, silent = true })
map("n", "<S-w>", ":NvimTreeFocus<CR>", { noremap = false, silent = true })

local function on_attach(bufnr)
	local api = require('nvim-tree.api')

	local function opts(desc)
		return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- Mappings removed via:
	--   remove_keymaps
	--   OR
	--   view.mappings.list..action = ""
	--
	-- The dummy set before del is done for safety, in case a default mapping does not exist.
	--
	-- You might tidy things by removing these along with their default mapping.
	vim.keymap.set('n', '<C-e>', '', { buffer = bufnr })
	vim.keymap.del('n', '<C-e>', { buffer = bufnr })
	vim.keymap.set('n', 'a', '', { buffer = bufnr })
	vim.keymap.del('n', 'a', { buffer = bufnr })
	vim.keymap.set('n', 'd', '', { buffer = bufnr })
	vim.keymap.del('n', 'd', { buffer = bufnr })
	vim.keymap.set('n', 'D', '', { buffer = bufnr })
	vim.keymap.del('n', 'D', { buffer = bufnr })
	vim.keymap.set('n', 'c', '', { buffer = bufnr })
	vim.keymap.del('n', 'c', { buffer = bufnr })
	vim.keymap.set('n', 'r', '', { buffer = bufnr })
	vim.keymap.del('n', 'r', { buffer = bufnr })
	vim.keymap.set('n', '<C-v>', '', { buffer = bufnr })
	vim.keymap.del('n', '<C-v>', { buffer = bufnr })
	vim.keymap.set('n', '<C-x>', '', { buffer = bufnr })
	vim.keymap.del('n', '<C-x>', { buffer = bufnr })
	vim.keymap.set('n', '<C-t>', '', { buffer = bufnr })
	vim.keymap.del('n', '<C-t>', { buffer = bufnr })


	-- Mappings migrated from view.mappings.list
	vim.keymap.set('n', ']e', api.node.navigate.diagnostics.next, opts('Next Diagnostic'))
	vim.keymap.set('n', '[e', api.node.navigate.diagnostics.prev, opts('Prev Diagnostic'))
	vim.keymap.set('n', 'F', api.live_filter.clear, opts('Clean Filter'))
	vim.keymap.set('n', 'f', api.live_filter.start, opts('Filter'))
	vim.keymap.set('n', 'g?', api.tree.toggle_help, opts('Help'))
	vim.keymap.set('n', 'gy', api.fs.copy.absolute_path, opts('Copy Absolute Path'))
	vim.keymap.set('n', 'W', api.tree.collapse_all, opts('Collapse'))
	vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
	vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Name'))
	vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
	vim.keymap.set('n', '<CR>', api.node.open.edit, opts('Open'))
	vim.keymap.set('n', 'J', api.node.navigate.sibling.last, opts('Last Sibling'))
	vim.keymap.set('n', 'K', api.node.navigate.sibling.first, opts('First Sibling'))
	vim.keymap.set('n', 'o', api.node.open.edit, opts('Open'))
	vim.keymap.set('n', 'O', api.node.open.no_window_picker, opts('Open: No Window Picker'))
	vim.keymap.set('n', 'p', api.node.navigate.parent, opts('Parent Directory'))
	vim.keymap.set('n', 's', api.node.open.vertical, opts('Open: Vertical Split'))
	vim.keymap.set('n', 'v', api.node.open.horizontal, opts('Open: Horizontal Split'))
	vim.keymap.set('n', 't', api.node.open.tab, opts('Open: New Tab'))
	vim.keymap.set('n', 'x', api.node.navigate.parent_close, opts('Close Directory'))
	vim.keymap.set('n', 'ma', api.fs.create, opts('Create'))
	vim.keymap.set('n', 'md', api.fs.remove, opts('Delete'))
	vim.keymap.set('n', 'mD', api.fs.trash, opts('Trash'))
	vim.keymap.set('n', 'mm', api.fs.cut, opts('Cut'))
	vim.keymap.set('n', 'mr', api.fs.rename, opts('Rename'))
	vim.keymap.set('n', 'mc', api.fs.copy.node, opts('Copy'))
	vim.keymap.set('n', 'mp', api.fs.paste, opts('Paste'))

end

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

	on_attach = on_attach,

	view = {
		width = 50,
		--mappings = {
		--list = {
		--{ key = "<C-e>", action = "" },
		--{ key = "a", action = "" },
		--{ key = "d", action = "" },
		--{ key = "D", action = "" },
		--{ key = "p", action = "parent_node" },
		--{ key = "c", action = "" },
		--{ key = "r", action = "" },
		--{ key = "<C-v>", action = "" },
		--{ key = "<C-x>", action = "" },
		--{ key = "<C-t>", action = "" },

		--{ key = "s", action = "vsplit" },
		--{ key = "v", action = "split" },
		--{ key = "t", action = "tabnew" },

		--{ key = "x", action = "close_node" },

		--{ key = "ma", action = "create" },
		--{ key = "md", action = "remove" },
		--{ key = "mD", action = "trash" },
		--{ key = "mm", action = "cut" },
		--{ key = "mr", action = "rename" },
		--{ key = "mc", action = "copy" },
		--{ key = "mp", action = "paste" },
		--},
		--},
	},

	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				}
			},

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

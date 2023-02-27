local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local custom_actions = {}

function custom_actions.fzf_multi_select(prompt_bufnr)
	local picker = action_state.get_current_picker(prompt_bufnr)
	local num_selections = table.getn(picker:get_multi_selection())

	if num_selections > 1 then
		-- actions.file_edit throws - context of picker seems to change
		--actions.file_edit(prompt_bufnr)
		actions.send_selected_to_qflist(prompt_bufnr)
		actions.open_qflist()
	else
		actions.file_edit(prompt_bufnr)
	end
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "dist", ".next", "public", ".DS_Store", "yarn.lock" },
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-i>"] = actions.select_horizontal,
				["<C-s>"] = actions.select_vertical,
				["<esc>"] = actions.close,
				["<Tab>"] = actions.toggle_selection + actions.move_selection_next,
				["<S-Tab>"] = actions.toggle_selection + actions.move_selection_previous,
				["<M-a>"] = actions.toggle_all,
				["<CR>"] = custom_actions.fzf_multi_select,
			},

			n = {
				["<Tab>"] = actions.toggle_selection + actions.move_selection_next,
				["<S-Tab>"] = actions.toggle_selection + actions.move_selection_previous,
				["<M-a>"] = actions.toggle_all,
				["<CR>"] = custom_actions.fzf_multi_select,
			},
		},
	},
	pickers = {
		find_files = {
			--theme = "dropdown",
			previewer = false,
			shorten_path = true,
			layout_strategy = "horizontal",
			find_command = {
				"rg",
				"--files",
				"--hidden",
				"-uu",
				"--no-require-git",
				"-g",
				"!node_modules/**",
				"-g",
				"!.git/**",
				"-g",
				"!.next/**",
				"-g",
				"!public/**",
			},
		},
	},
	extensions = {
		fzf = {
			fuzzy = false,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

require("telescope").load_extension("fzf")

vim.api.nvim_set_keymap(
	"n",
	"<leader>fs",
	'<cmd>lua require("telescope.builtin").lsp_document_symbols()<cr>',
	{ noremap = true }
)
vim.cmd([[
  nnoremap <silent><C-p> <cmd>Telescope find_files<cr>
  nnoremap <silent><S-M-f> <cmd>Telescope live_grep<cr>
  nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
]])

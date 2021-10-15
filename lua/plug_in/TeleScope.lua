local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			i = { ["kj"] = actions.close },
		},
	},
	pickers = {
		find_files = {
			theme = "ivy",
		},
		live_grep = {
			theme = "ivy",
		},
	},
})

local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			i = { ["kj"] = actions.close },
		},
		file_ignore_patterns = {"env", "node_modules"} 
	},
	pickers = {
		find_files = {
			theme = "ivy",
		},
		live_grep = {
			theme = "ivy",
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown {}
		},
	}
})

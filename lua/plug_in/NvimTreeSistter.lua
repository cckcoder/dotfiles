require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"php",
		"json",
		"yaml",
		"html",
		"css",
		"scss",
		"bash",
		"c",
		"python",
		"comment",
		"dockerfile",
		"javascript",
		"lua",
		"regex",
		"tsx",
		"typescript",
		"vim",
		"vue",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true
	},
	indent = {
		enable = true,
	},
	matchup = {
		enable = true,
	},
})

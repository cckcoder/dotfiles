vim.g.nvim_tree_indent_markers = 1

require("nvim-tree").setup({
	disable_netrw = false,
	update_cwd = true,
	auto_close = true,
	view = {
		side = "right",
	},
})

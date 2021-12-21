vim.g.nvim_tree_indent_markers = 1

require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	update_to_buf_dir = {
		enable = true,
		auto_open = true,
	},
	auto_close = true,
	update_cwd = true,
	view = {
		width = "30%",
		side = "right",
		auto_resize = true,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})

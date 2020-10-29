lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    disable = { "c", "rust" },
  },
	incremental_selection = { enable = true },
	textobjects = { enable = true },
  indent = { enable = true },
}
EOF

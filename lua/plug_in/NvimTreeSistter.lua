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
		"java",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	indent = {
		enable = true,
	},
	matchup = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = "@class.outer",
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
		lsp_interop = {
			enable = true,
			border = "none",
			peek_definition_code = {
				["<leader>pf"] = "@function.outer",
				["<leader>pc"] = "@class.outer",
			},
		},
	},
	rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
})


local cmd = vim.cmd
local opt = vim.opt

cmd[[syntax enable]]
cmd[[colorscheme nord]]

--[[ catppuccino.setup(
    {
        colorscheme = "catppuccino",
        styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
        integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic"
				}
			},
            vim_sneak = true,
            which_key = true,
            lsp_saga = true
        }
    }
)


catppuccino.load() ]]

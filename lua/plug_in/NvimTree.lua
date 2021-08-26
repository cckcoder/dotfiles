vim.g.nvim_tree_disable_netrw = 0 -- "1 by default, disables netrw
vim.g.nvim_tree_hide_dotfiles = 0 -- 0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_indent_markers = 1 -- "0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_follow = 1 -- "0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_side = 'right'
vim.g.nvim_tree_ignore= { '.git', 'node_modules', 'env', '__pycache__', 'version-name'}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

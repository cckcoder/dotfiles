require('plug_in.ThemeConfig')
require('plug_in.CompeConfig')
require('plug_in.GalaxyLineConfig')
require('plug_in.LspColors')
require('plug_in.LspConfig')
require('plug_in.NvimTree')
require('plug_in.NvimTreeSistter')
require('plug_in.NvimBufferLine')
require('plug_in.LightBulb')
require('plug_in.LspSaga')
require('plug_in.TeleScope')
require('plug_in.KeyMap')
require('plug_in.LspKind')

vim.g.loaded_matchit = 1

-- Tip: Make vsnip make complete feel less 'laggy' at startup.
-- Ref. https://www.reddit.com/r/neovim/comments/nmjz68/tip_make_vsnip_run_at_startup_so_that_it_will_not/
vim.api.nvim_exec([[
	autocmd FileType * call vsnip#get_complete_items(bufnr())
]], false)

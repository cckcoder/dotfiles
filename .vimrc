filetype plugin on
syntax enable
set nocompatible


source ~/dotfiles/config/plugins.vim
source ~/dotfiles/config/general_config.vim
source ~/dotfiles/config/mapping.vim


"""""""""""""""
"   PLUG-IN   "
"""""""""""""""
source ~/dotfiles/config/vim_autocmd.vim
source ~/dotfiles/config/anyjump.vim
source ~/dotfiles/config/bookmark.vim
source ~/dotfiles/config/vue.vim
source ~/dotfiles/config/aerojump.vim
source ~/dotfiles/config/vim_rainbow.vim
source ~/dotfiles/config/matchup.vim
source ~/dotfiles/config/hexokinase.vim
source ~/dotfiles/config/plugin_config.vim
source ~/dotfiles/config/vim_which_key.vim

luafile ~/dotfiles/lua/CompeConfig.lua
luafile ~/dotfiles/lua/NvimTree.lua
luafile ~/dotfiles/lua/GalaxyLineConfig.lua
luafile ~/dotfiles/lua/LspConfig.lua
luafile ~/dotfiles/lua/LspColors.lua

lua require'bufferline'.setup{}

set secure

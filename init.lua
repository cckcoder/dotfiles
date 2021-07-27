require('plugins')
require('GeneralConfig')
require('plug_in/KeyMap')
require('plug_in/ThemeConfig')

--[[PlugIn Call]]--
--require('plug_in/NvimTree')
require('plug_in/CompeConfig')
require('plug_in/TeleScope')
require('plug_in/NvimTreeSistter')
require('plug_in/LspConfig')
require('plug_in/GalaxyLineConfig')
require('plug_in/WhichKey')
require('plug_in/LspKind')
require('plug_in/LspSaga')
require('plug_in/LightBulb')
require('plug_in/IndentLine')
require('plug_in/Signify')
require('plug_in/SymbolsOutline')
require('plug_in/Rnvimr')
require 'colorizer'.setup{ '*'; }

vim.cmd('let g:loaded_matchit = 1')

require("plugins")
require("GeneralConfig")
require("plug_in/KeyMap")
require("plug_in/ThemeConfig")

--[[PlugIn Call]]
require("plug_in/NvimTree")
require("plug_in/nvimCmp")
require("plug_in/TeleScope")
require("plug_in/NvimTreeSistter")
require("plug_in/LspConfig")
require("plug_in/GalaxyLineConfig")
require("plug_in/WhichKey")
require("plug_in/LightBulb")
require("plug_in/IndentLine")
require("plug_in/Signify")
require("plug_in/SymbolsOutline")
require("colorizer").setup({ "*" })
require("plug_in/Kommentary")
require("plug_in/VimSneak")

vim.cmd("let g:loaded_matchit = 1")

vim.cmd([[hi HopNextKey guifg=#bd93f9]])
vim.cmd([[hi HopNextKey1 guifg=#bd93f9]])
vim.cmd([[hi HopNextKey2 guifg=#bd93f9]])

local wk = require("which-key")

wk.register({
  q = {
    name = "Quit",
    a = { ":wqa!<CR>", "Save and Quit all"},
    q = { "wq!", "Quit Normal"},
    Q = { "qa!", "Quit All Not save"},
  },
  v = {
    name = "Windows",
    s = { '<C-W>s', "Splite Horizontal" },
    v = { '<C-W>v', "Splite Vertical" },
    c = { '<C-W>c', "Delete Window" },
    R = { '<C-W>5>', "Expand Window Right" },
    L = { '<C-W>5<', "Expand Window Left" },
    B = { '<C-W>=', "Balance Window" }
  },
  P = {
    name = "Packer",
    i = { ":PackerInstall<CR>", "Packer install"},
    u = { ":PackerUpdate<CR>", "Packer update"},
    c = { ":PackerClean<CR>", "Packer clean"},
    h = { ":checkhealth<CR>", "Check health"},
  },
  S = {
    name = "LspSage",
    f = { ":Lspsaga lsp_finder<CR>", "Saga Finder"},
    r = { ":Lspsaga rename<CR>", "Saga Rename"},
    p = { ":Lspsaga preview_definition<CR>", "Saga Preview Definit"},
    d = { ":Lspsaga hover_doc<CR>", "Saga Hoverdoc"},
  },
  j = {
    name = "AnyJump",
    j = { ":AnyJump<CR>", "AnyJump" },
    j = { ":AnyJump<CR>", "AnyJump" },
    b = { ":AnyJumpBack<CR>", "AnyJumpBack" },
    l = { ":AnyJumpLastResults<CR>", "AnyJumpLastResults" }
  }

}, { prefix = "<leader>"})

--[anyjump]--
--map('n', '<leader>AA', ':AnyJump<CR>', options)
--map('x', '<leader>AA', ':AnyJumpVisual<CR>', options)
--map('n', '<leader>jb', ':AnyJumpBack<CR>', options)
--map('n', '<leader>jl', ':AnyJumpLastResults<CR>', options)

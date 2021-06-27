vim.cmd(
  [[autocmd CursorHold,CursorHoldI * lua LightBulbFunc()]]
)

LightBulbFunc = function()
  require'nvim-lightbulb'.update_lightbulb {
      sign = {
          enabled = true,
          text = "ﯦ",
          priority = 10,
      },
      float = {
          enabled = false,
          text = "ﯦ",
          win_opts = {},
      },
      virtual_text = {
          enabled = false,
          text = "ﯦ",
      }
  }
end

local gl = require('galaxyline')
local gls = gl.section
local utils = require('plug_in/Utils')

gl.short_line_list = { 'LuaTree', 'NvimTree' }

local colors = {
  bg = '#282c34',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#608B4E',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#569CD6',
  red = '#D16969',
}

local sep = {
  right_filled = '', -- e0b2
  left_filled = ' ', -- e0b0
  right = '  ', -- e0b3
  left = '  ', -- e0b1
}

local function get_mode_color()
  local mode_color = {
    n = colors.purple, 
    i = colors.green,
    v = colors.blue,
    [''] = colors.blue,
    V = colors.blue,
    c = colors.purple,
    no = colors.magenta,
    s = colors.orange,
    S = colors.orange,
    [''] = colors.orange,
    ic = colors.yellow,
    R = colors.red,
    Rv = colors.red,
    cv = colors.red,
    ce=colors.red, 
    r = colors.cyan,
    rm = colors.cyan, 
    ['r?'] = colors.cyan,
    ['!']  = colors.red,
    t = colors.red
  }
  return mode_color[vim.fn.mode()]
end

local color_mode = function()
  return get_mode_color()
end



local function file_readonly()
    if vim.bo.filetype == 'help' then
        return ''
    end
    if vim.bo.readonly == true then
        return '  '
    end
    return ''
end

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

local checkwidth_left = function()
  return utils.has_width_gt(35) and buffer_not_empty()
end

local buffer_not_empty = function()
  return not utils.is_buffer_empty()
end

local is_file = function()
    return vim.bo.buftype ~= 'nofile'
end

local function get_current_file_name()
    local file = vim.fn.expand '%:t'
    if vim.fn.empty(file) == 1 then
        return ''
    end
    if string.len(file_readonly()) ~= 0 then
        return file .. file_readonly()
    end
    if vim.bo.modifiable then
        if vim.bo.modified then
            return file .. '  '
        end
    end
    return file .. ' '
end

local function split(str, sep)
    local res = {}
    local n = 1
    for w in str:gmatch('([^' .. sep .. ']*)') do
        res[n] = res[n] or w -- only set once (so the blank after a string is ignored)
        if w == '' then
            n = n + 1
        end -- step forwards on a blank but not a string
    end
    return res
end


gls.left[1] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {
        n = colors.purple, 
        i = colors.green,
        v = colors.blue,
        [''] = colors.blue,
        V = colors.blue,
        c = colors.purple,
        no = colors.magenta,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.red,
        Rv = colors.red,
        cv = colors.red,
        ce=colors.red, 
        r = colors.cyan,
        rm = colors.cyan, 
        ['r?'] = colors.cyan,
        ['!']  = colors.red,
        t = colors.red
      }
      vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim.fn.mode()])
      return '  CodeWizz  '
    end,
    separator = sep.left_filled,
    separator_highlight = {colors.purple , colors.bg }
  },
}

gls.left[2] = {
  GitIcon = {
    provider = function() return ' ' end,
    condition = buffer_not_empty,
    highlight = {colors.orange,colors.bg},
  }
}

gls.left[3] = {
  GitBranch = {
    provider = 'GitBranch',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    condition = buffer_not_empty,
    highlight = {colors.grey,colors.bg},
    separator = sep.left,
    separator_highlight = { colors.section_bg, colors.bg },
  }
}

gls.left[4] = {
  FileIcon = {
    provider = { function() 
        return '' 
    end, 'FileIcon' },
    highlight = {
      require('galaxyline.provider_fileinfo').get_file_icon,
      colors.section_bg,
    },
  }
}

gls.left[5] = {
  FilePath = {
    provider = function()
      local fp = vim.fn.fnamemodify(vim.fn.expand '%', ':~:.:h')
      local tbl = split(fp, '/')
      local len = #tbl

      if len > 2 and not len == 3 and not tbl[0] == '~' then
          return '…/' .. table.concat(tbl, '/', len - 1) .. '/' -- shorten filepath to last 2 folders
      else
          return fp .. '/'
      end
    end,
    condition = function()
        return is_file() and checkwidth()
    end,
    highlight = { colors.middlegrey, colors.section_bg },
  },
}

gls.left[6] = {
    FileName = {
        provider = get_current_file_name,
        condition = buffer_not_empty,
        highlight = { colors.fg, colors.section_bg },
        separator = sep.left,
        separator_highlight = { colors.section_bg, colors.bg },
    },
}

--[[
gls.left[6] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.green,colors.bg},
  }
}
gls.left[7] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.left[8] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}
gls.left[9] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
}
gls.left[10] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[11] = {
  Space = {
    provider = function () return '' end
  }
}
gls.left[12] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}
gls.left[13] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '   ',
    highlight = {colors.blue,colors.bg},
  }
}
gls.left[14] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '   ',
    highlight = {colors.orange,colors.bg},
  }
}

]]--

gls.right[1]= {
  FileFormat = {
    provider = { 'FileIcon', 'FileFormat', },
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.grey,colors.bg},
  }
}

gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = sep.right,
    separator_highlight = {colors.grey,colors.bg},
    highlight = {colors.grey,colors.bg},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = sep.right,
    separator_highlight = {colors.grey,colors.bg},
    highlight = {colors.grey,colors.bg},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.purple},
  }
}

-- gls.short_line_left[1] = {
--   BufferType = {
--     provider = 'FileTypeName',
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.grey,colors.purple}
--   }
-- }

gls.short_line_left[1] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
}

-- gls.short_line_right[1] = {
--   BufferIcon = {
--     provider= 'BufferIcon',
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.grey,colors.purple}
--   }
-- }
-- function! s:my_bookmark_color() abort
--   let s:scl_guibg = matchstr(execute('hi SignColumn'), 'guibg=\zs\S*')
--   if empty(s:scl_guibg)
--     let s:scl_guibg = 'NONE'
--   endif
--   exe 'hi MyBookmarkSign guifg=' . s:scl_guibg
-- endfunction
-- call s:my_bookmark_color() " don't remove this line!

-- augroup UserGitSignColumnColor
--   autocmd!
--   autocmd ColorScheme * call s:my_bookmark_color()
-- augroup END

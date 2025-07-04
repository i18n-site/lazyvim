return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = {
    style = "night",
    transparent = false,
    -- 自定义基础颜色
    on_colors = function(colors)
      colors.bg = "#000000"
      colors.bg_dark = "#000000"
      colors.bg_float = "#000000"
    end,
    -- 自定义高亮组
    on_highlights = function(hl, c)
      --[[ 基础界面元素 ]]
      hl.CursorLine = { bg = "#202020" }
      hl.CursorLineNr = { fg = "#ffff00", bg = "#202020" } -- 让行号颜色在光标行上更突出
      hl.Visual = { bg = "#303000", fg = "#90c000" }
      hl.Search = { bg = "#000010", fg = "#F2FF00" }
      hl.Comment = { fg = "#777777" }
      hl.rustAttribute = { fg = "#339900" }
      hl.rustKeyword = { fg = "#228810" }

      -- 类型和常量
      hl["@type"] = { fg = "#BEa1EC" }
      hl["@type.builtin"] = { fg = "#CCc00A" }
      hl["@constant"] = { fg = "#DAd008" }
      hl["@constant.builtin"] = { fg = "#E8dD06" }
      hl["@constant.macro"] = { fg = "#F6EC04" }

      -- 关键字和操作符
      hl["@keyword"] = { fg = "#06a904" }
      hl["@keyword.function"] = { fg = "#94a702" }
      hl["@keyword.operator"] = { fg = "#A2a500" }
      hl["@operator"] = { fg = "#B0a30E" }

      -- 变量和函数
      hl["@variable"] = { fg = "#4A9E0A" }
      hl["@function"] = { fg = "#5CCB0A" }
      hl["@function.call"] = { fg = "#6ADD08" }
      hl["@function.macro"] = { fg = "#78EB06" }

      -- 字符串和数字
      hl["@string"] = { fg = "#809000" }
      hl["@number"] = { fg = "#739000" }

      -- 标点符号
      hl["@punctuation.bracket"] = { fg = "#B4E402" }
      hl["@punctuation.delimiter"] = { fg = "#C2E200" }

      -- Tags (HTML/XML)
      hl["@tag"] = { fg = "#DEDE0D" }
      hl["@tag.attribute"] = { fg = "#EBEB0C" }
      hl["@tag.delimiter"] = { fg = "#F9F90A" }
    end,
  },
}

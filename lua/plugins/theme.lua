return {
  "folke/tokyonight.nvim",
  priority = 1000,
  opts = {
    style = "night",
    transparent = false,
    on_colors = function(colors)
      colors.bg = "#000000"
      colors.bg_dark = "#000000"
      colors.bg_float = "#000000"
    end,
    on_highlights = function(hl, c)
      hl.SnacksIndentScope = { fg = "#202020" }
      hl.SnacksDashboardDir = { fg = "#202020" }
      hl.CursorLine = { bg = "#102000" }
      hl.WinSeparator = { fg = "#003000" }

      hl.LspReferenceWrite = { bg = "#101000", fg = "#00c000" }
      hl.LspReferenceText = { bg = "#101000", fg = "#00c000" }
      hl.LspReferenceRead = { bg = "#101000", fg = "#00c000" }

      hl.CursorLineNr = { fg = "#ffff00", bg = "#202020" } -- 让行号颜色在光标行上更突出
      hl.Visual = { bg = "#303000", fg = "#90c000" }
      hl.Search = { bg = "#000010", fg = "#F2FF00" }
      hl.Comment = { fg = "#777777" }
      hl.rustAttribute = { fg = "#339900" }
      hl.rustKeyword = { fg = "#228810" }

      hl["@lsp.type.property"] = { fg = "#338900" }
      -- 类型和常量
      hl["@type"] = { fg = "#3Ea13C" }
      hl["@type.builtin"] = { fg = "#0cc00a" }
      hl["@constant"] = { fg = "#2Aa008" }
      hl["@constructor"] = { fg = "#2A9008" }
      hl["@constant.builtin"] = { fg = "#506D06" }
      hl["@constant.macro"] = { fg = "#36aC04" }

      hl["@module"] = { fg = "#308036" }
      -- 关键字和操作符
      hl["@keyword"] = { fg = "#06a904" }
      hl["@keyword.function"] = { fg = "#34a702" }
      hl["@keyword.operator"] = { fg = "#42a500" }
      hl["@keyword.import"] = { fg = "#30a500" }
      hl["@keyword.repeat"] = { fg = "#107500" }
      hl["@keyword.conditional"] = { fg = "#507500" }
      hl["@operator"] = { fg = "#30a30E" }

      -- 变量和函数
      hl["@variable"] = { fg = "#4A9E0A" }
      hl["@variable.member"] = { fg = "#0A9E0A" }
      hl["@variable.parameter"] = { fg = "#5A8E5A" }
      hl["@function"] = { fg = "#5CCB0A" }
      hl["@function.call"] = { fg = "#30aD28" }
      hl["@function.macro"] = { fg = "#30a008" }

      -- 字符串和数字
      hl["@string"] = { fg = "#809000" }
      hl["@number"] = { fg = "#739000" }

      -- 标点符号
      hl["@punctuation.bracket"] = { fg = "#04a402" }
      hl["@punctuation.delimiter"] = { fg = "#42a200" }
      hl["@punctuation.special"] = { fg = "#429200" }

      -- Tags (HTML/XML)
      hl["@tag"] = { fg = "#DEDE0D" }
      hl["@tag.attribute"] = { fg = "#EBEB0C" }
      hl["@tag.delimiter"] = { fg = "#F9F90A" }
    end,
  },
}

return {
  {
    "stevearc/conform.nvim",
    build = function()
      local cmd = "bun i -g fmt_svelte stylus-supremacy"
      vim.fn.system(cmd)
      print("conform.nvim: installed fmt_svelte & stylus-supremacy")
    end,
    opts = function(_, opts)
      -- 为 conform.nvim 增加你的自定义格式化程序
      opts.formatters.fmt_svelte = {
        command = "bun",
        args = { "x", "fmt_svelte", "$FILENAME" },
      }
      opts.formatters.stylus_supremacy = {
        command = "stylus-supremacy",
        args = function(ctx)
          local config_filename = "supremacy.yml"
          local fallback_config = vim.fn.expand("~/.config/" .. config_filename)

          local found_config = vim.fs.find(config_filename, {
            upward = true,
            path = ctx.filename,
            type = "file",
          })

          local config_path
          if found_config and #found_config > 0 then
            config_path = found_config[1]
          else
            config_path = fallback_config
          end

          if vim.fn.filereadable(config_path) == 1 then
            return { "format", "--options", config_path, "$FILENAME" }
          else
            return { "format", "$FILENAME" }
          end
        end,
      }
      -- V language formatter
      opts.formatters.vfmt = {
        command = "v",
        args = { "fmt", "$FILENAME" },
      }

      opts.formatters.alejandra = {
        command = "alejandra",
        args = { "-" },
        stdin = true,
      }

      -- 指定哪些文件类型使用你的格式化程序
      opts.formatters_by_ft.svelte = { "fmt_svelte" }
      opts.formatters_by_ft.stylus = { "stylus_supremacy" }
      -- Associate V language formatter with .v files
      opts.formatters_by_ft.v = { "vfmt" }
      -- Nix files formatter
      opts.formatters_by_ft.nix = { "alejandra" }
    end,
  },
}

return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
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

      opts.formatters_by_ft.stylus = { "stylus_supremacy" }
    end,
    ft = { "svelte", "stylus" },
  },
}

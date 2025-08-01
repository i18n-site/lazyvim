return {
  "Shougo/context_filetype.vim",
  ft = "svelte",
  init = function()
    vim.g.context_filetype_filetypes = {
      svelte = {
        { filetype = "coffee", start = '<script lang="coffee">', ["end"] = "</script>" },
        { filetype = "stylus", start = '<style lang="stylus">', ["end"] = "</style>" },
        { filetype = "pug", start = '<template lang="pug">', ["end"] = "</template>" },
      },
    }
  end,
}

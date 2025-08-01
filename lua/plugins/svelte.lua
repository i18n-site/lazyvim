return {
  "i18n-fork/vim-svelte-plugin",
  ft = { "svelte" },
  dependencies = { "digitaltoad/vim-pug" },
  init = function()
    vim.g.vim_svelte_plugin_use_pug = 1
    vim.g.vim_svelte_plugin_use_stylus = 1
    vim.g.vim_svelte_plugin_use_coffee = 1
    vim.g.vim_svelte_plugin_has_init_indent = 0
  end,
}

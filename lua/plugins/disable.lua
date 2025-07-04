return {
  -- 禁用顶部的 bufferline 插件
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false }, -- noice 的依赖也禁用
  { "nvim-lualine/lualine.nvim", enabled = false },
}

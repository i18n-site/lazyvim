return {
  -- 1. 配置 Biome 的 LSP 服务器
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 确保 oxfmt lsp 已经设置
        -- nvim-lspconfig 内置了对 oxfmt 的支持，我们只需简单设置
        oxlint = {},
      },
    },
  },

  -- 2. 使用 conform.nvim 配置 Biome 作为格式化工具
  {
    "stevearc/conform.nvim",
    opts = {
      -- 定义 oxfmt 格式化器
      formatters = {
        oxfmt = {
          command = "oxfmt",
          args = { "$FILENAME" },
          stdin = false,
        },
      },
      -- 为相关文件类型指定 oxfmt 作为默认格式化器
      formatters_by_ft = {
        ["javascript"] = { "oxfmt" },
        ["typescript"] = { "oxfmt" },
        ["vue"] = { "oxfmt" },
        ["json"] = { "oxfmt" },
        ["jsonc"] = { "oxfmt" },
      },
    },
  },
}

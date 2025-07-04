return {
  "Exafunction/codeium.vim",
  -- `event` 字段让插件在特定事件发生时才加载，以提高启动速度。
  -- 'InsertEnter' 表示在你进入插入模式时加载，这对于代码补全插件来说是最佳选择。
  -- 'VeryLazy' 也是一个不错的备选项。
  event = "InsertEnter",
}

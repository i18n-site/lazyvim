local set = vim.keymap.set
set("v", "<BS>", "gc", { remap = true, desc = "comment selection" })
set("v", "<", "<gv", { noremap = true, silent = true })
set("v", ">", ">gv", { noremap = true, silent = true })
set("v", ".", ":<C-u>normal .<CR>", { desc = "在可视模式下重复上一个操作" })

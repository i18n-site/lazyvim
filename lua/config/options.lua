-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.laststatus = 0
opt.mouse = ""
opt.showcmd = true
opt.wildmenu = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.relativenumber = false
opt.clipboard = ""

vim.g.snacks_animate = false
vim.keymap.set("n", "mr", "<cmd>MRU<cr>", { desc = "最近打开的文件" })

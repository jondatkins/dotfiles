-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { desc = "[P]Exit insert mode with jk" })
vim.keymap.set("n", "<Leader>dd", ":pu=strftime('%c')<CR>", { noremap = true, silent = true, desc = "Add Date" })
vim.keymap.set("n", "<Leader>fx", ":!chmod +x %<CR>", { noremap = true, silent = false, desc = "Make file executable" })

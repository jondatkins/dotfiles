-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }
-- Add any additional keymaps here
vim.keymap.set("n", "<F5>", ":pu=strftime('%c')<CR>", { noremap = true, silent = true, desc = "Add Date" })
vim.keymap.set("i", "<F5>", "<C-R>=strftime('%c')<CR>", { noremap = true, silent = true, desc = "Add Date" })
-- map("n", "src", ":so %<CR>", { noremap = true, silent = false, desc = "Source File" })
vim.keymap.set("n", "<Leader>sv", ":source $MYVIMRC<CR>", { noremap = true, silent = false, desc = "Source File" })
vim.keymap.set("n", "<Leader>fx", ":!chmod +x %<CR>", { noremap = true, silent = false, desc = "Make file executable" })
-- nnoremap <leader>fx :!chmod +x %<CR>
-- Press jk fast to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "kj", "<ESC>", opts)

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local opts = { noremap = true, silent = true }

local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Add any additional keymaps here
map("n", "<F5>", ":pu=strftime('%c')<CR>", { noremap = true, silent = true, desc = "Add Date" })
map("i", "<F5>", "<C-R>=strftime('%c')<CR>", { noremap = true, silent = true, desc = "Add Date" })
-- map("n", "src", ":so %<CR>", { noremap = true, silent = false, desc = "Source File" })
map("n", "<Leader>sv", ":source $MYVIMRC<CR>", { noremap = true, silent = false, desc = "Source File" })
map("n", "<Leader>fx", ":!chmod +x %<CR>", { noremap = true, silent = false, desc = "Make file executable" })
-- nnoremap <leader>fx :!chmod +x %<CR>
-- Press jk fast to exit insert mode
map("i", "jk", "<ESC>", opts)
map("i", "kj", "<ESC>", opts)

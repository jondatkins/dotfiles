-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
---- This file is automatically loaded by lazyvim.config.init.

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- in your LazyVim config (lua/plugins or lua/config/autocmds.lua)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.textwidth = 80 -- wrap at 80 characters
    vim.opt_local.formatoptions:append("t") -- auto-wrap text
  end,
})

-- Automatically format Markdown with Prettier (via npx) on save
-- Format Markdown with Prettier (npx) on save, avoiding the "No parser" error
-- vim.api.nvim_create_autocmd("BufWritePre", {
--   pattern = "*.md",
--   callback = function()
--     local pos = vim.api.nvim_win_get_cursor(0)
--     local bufname = vim.api.nvim_buf_get_name(0) -- full path or "" if new/unsaved
--
--     local cmd
--     if bufname == "" then
--       -- no filename to infer type from: explicitly tell prettier it's markdown
--       cmd = "%!npx prettier --prose-wrap always --print-width 80 --parser markdown"
--     else
--       -- give prettier the file path so it can infer the parser (works for .md, .mdx, etc)
--       cmd = "%!npx prettier --prose-wrap always --print-width 80 --stdin-filepath " .. vim.fn.shellescape(bufname)
--     end
--
--     -- run formatting, silently so save doesn't spam the command output
--     vim.cmd("silent! " .. cmd)
--
--     -- restore cursor position
--     vim.api.nvim_win_set_cursor(0, pos)
--   end,
-- })

-- Define a function to format current Markdown buffer with Prettier
local function format_markdown()
  local pos = vim.api.nvim_win_get_cursor(0)
  local bufname = vim.api.nvim_buf_get_name(0) -- full path or "" if new/unsaved

  local cmd
  if bufname == "" then
    cmd = "%!npx prettier --prose-wrap always --print-width 80 --parser markdown"
  else
    cmd = "%!npx prettier --prose-wrap always --print-width 80 --stdin-filepath " .. vim.fn.shellescape(bufname)
  end

  vim.cmd("silent! " .. cmd)
  vim.api.nvim_win_set_cursor(0, pos)
end

-- Create a user command you can run as :FormatMarkdown
vim.api.nvim_create_user_command("FormatMarkdown", format_markdown, {})

-- Optional: also bind it to a key, e.g. <leader>fm
vim.keymap.set("n", "<leader>fm", format_markdown, { desc = "Format Markdown with Prettier" })
vim.keymap.set("v", "<leader>fm", format_markdown, { desc = "Format Markdown with Prettier" })

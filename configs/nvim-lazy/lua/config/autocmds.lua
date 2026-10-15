-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)

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

-- local function format_markdown()
--   local pos = vim.api.nvim_win_get_cursor(0)
--   local bufname = vim.api.nvim_buf_get_name(0)
--
--   local cmd
--   if bufname == "" then
--     cmd = "%!npx --loglevel=silent prettier --prose-wrap always --print-width 80 --parser markdown 2>/dev/null"
--   else
--     cmd = "%!npx --loglevel=silent prettier --prose-wrap always --print-width 80 --stdin-filepath "
--       .. vim.fn.shellescape(bufname)
--       .. " 2>/dev/null"
--   end
--
--   vim.cmd(cmd)
--   vim.api.nvim_win_set_cursor(0, pos)
-- end
--
-- -- Create a user command you can run as :FormatMarkdown
-- vim.api.nvim_create_user_command("FormatMarkdown", format_markdown, {})
--
-- -- Optional: also bind it to a key, e.g. <leader>fm
-- vim.keymap.set("n", "<leader>fm", format_markdown, { desc = "Format Markdown with Prettier" })
-- vim.keymap.set("v", "<leader>fm", format_markdown, { desc = "Format Markdown with Prettier" })

-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/markdown-preview.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/markdown-preview.lua
--
-- Link to github repo
-- https://github.com/iamcco/markdown-preview.nvim

-- return {
--   "iamcco/markdown-preview.nvim",
--   keys = {
--     {
--       "<leader>mp",
--       ft = "markdown",
--       "<cmd>MarkdownPreviewToggle<cr>",
--       desc = "Markdown Preview",
--     },
--   },
-- }

return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown" },

  build = "cd app && npm install",
  config = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle <CR>", {})
  end,
}

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.swapfile = false
opt.clipboard = "unnamedplus"
-- opt.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
local opt = vim.opt
-- opt.swapfile = false
-- opt.clipboard = "unnamedplus"
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
-- vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.lazyvim_python_ruff = "ruff_lsp"
--
-- Set to `false` to prevent "non-lsp snippets"" from appearing inside completion windows
-- Motivation: Less clutter in completion windows and a more direct usage of snippets
vim.g.lazyvim_mini_snippets_in_completion = true

-- NOTE: Please also read:
-- https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-snippets.md#expand
-- :h MiniSnippets-session

-- Example override for your own config:
return {
  {
    "nvim-mini/mini.snippets",
    opts = function(_, opts)
      -- By default, for opts.snippets, the extra for mini.snippets only adds gen_loader.from_lang()
      -- This provides a sensible quickstart, integrating with friendly-snippets
      -- and your own language-specific snippets
      --
      -- In order to change opts.snippets, replace the entire table inside your own opts

      local snippets, config_path = require("mini.snippets"), vim.fn.stdpath("config")

      opts.snippets = { -- override opts.snippets provided by extra...
        -- Load custom file with global snippets first (order matters)
        snippets.gen_loader.from_file(config_path .. "/snippets/global.json"),

        -- Load snippets based on current language by reading files from
        -- "snippets/" subdirectories from 'runtimepath' directories.
        -- snippets.gen_loader.from_lang(), -- this is the default in the extra...
      }
    end,
  },
}

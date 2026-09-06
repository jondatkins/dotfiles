return {
  -- disable friendly-snippets
  { "rafamadriz/friendly-snippets", enabled = false },
  { "saghen/blink.cmp", enabled = true },
  { "neovim/nvim-lspconfig", opts = { servers = { lua_ls = { enabled = false } } } },
}

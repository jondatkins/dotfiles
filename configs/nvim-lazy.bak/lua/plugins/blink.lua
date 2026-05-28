if true then
  return {}
end
return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      per_filetype = {
        lua = { inherit_defaults = true, "lazydev" },
      },
      providers = {
        path = { score_offset = 3 },
        lsp = { score_offset = 0 },
        snippets = { score_offset = 5 },
        buffer = { score_offset = -3 },

        -- lazydev = {
        --   name = "LazyDev",
        --   module = "lazydev.integrations.blink",
        --   score_offset = 100, -- show at a higher priority than lsp
        -- },
      },
    },
  },
}

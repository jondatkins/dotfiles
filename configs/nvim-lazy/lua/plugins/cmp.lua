if true then
  return {}
end
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.sources = cmp.config.sources({
      { name = "luasnip", priority = 1000 },
      { name = "nvim_lsp", priority = 750 },
      { name = "path", priority = 500 },
    }, {
      { name = "buffer", priority = 250 },
    })

    -- THIS is the important bit
    opts.completion = opts.completion or {}
    opts.completion.autocomplete = false

    return opts
  end,
}

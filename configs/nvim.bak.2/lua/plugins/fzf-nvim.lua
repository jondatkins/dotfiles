-- require("fzf-lua").setup({ "telescope" })
return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end,
  -- setup({ "fzf-native" }),
  -- setup = { require("fzf-lua").setup({ "telescope" }) },
  -- require('fzf-lua').setup({'fzf-native'})
}

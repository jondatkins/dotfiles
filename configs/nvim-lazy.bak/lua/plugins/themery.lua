if true then
  return {}
end
return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      -- Minimal config
      themes = { "gruvbox", "tokyo-night", "catpuccin" }, -- Your list of installed colorschemes.
      livePreview = true, -- Apply theme while picking. Default to true.
    })
  end,
}

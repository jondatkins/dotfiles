return {
  "brianhuster/live-preview.nvim",
  dependencies = {
    -- You can choose one of the following pickers
    "nvim-telescope/telescope.nvim",
    "folke/snacks.nvim",
  },
  opts = {
    port = 5500,
    browser = "default",
    dynamic_root = false,
    sync_scroll = true,
    picker = "",
    address = "127.0.0.4",
  },
}

return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      signature = {
        enabled = false,
      },
    },
  },
  config = function(_, opts)
    require("noice").setup(opts)

    vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Help" })
  end,
}

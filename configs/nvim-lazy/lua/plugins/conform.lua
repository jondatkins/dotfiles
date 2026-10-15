return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang_format" },
      cpp = { "clang_format" },
      objc = { "clang_format" },
      objcpp = { "clang_format" },
      markdown = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = {
          "--prose-wrap",
          "always",
          "--print-width",
          "80",
        },
      },
    },
  },
}

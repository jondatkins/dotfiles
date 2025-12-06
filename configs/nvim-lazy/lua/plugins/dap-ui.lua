return {
  {
    "rcarriga/nvim-dap-ui",
    opts = {
      layouts = {
        {
          elements = {
            { id = "scopes", size = 0.40 },
            { id = "breakpoints", size = 0.20 },
            { id = "stacks", size = 0.20 },
            { id = "watches", size = 0.20 },
          },
          size = 60, -- width of left panel in columns
          position = "left",
        },
        -- keep the default bottom layout if you want it:
        {
          elements = {
            "repl",
            "console",
          },
          size = 14,
          position = "bottom",
        },
      },
    },
  },
}

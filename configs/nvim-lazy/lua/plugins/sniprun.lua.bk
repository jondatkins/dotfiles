if true then
  return {}
end
return {
  "michaelb/sniprun",
  branch = "master",

  build = "sh install.sh",
  -- do 'sh install.sh 1' if you want to force compile locally
  -- (instead of fetching a binary from the github release). Requires Rust >= 1.65
  keys = {
    -- { "v", "<leader>sr", "<cmd>SnipRun<CR>", desc = "Run Snippet" },
    -- { "i", "<leader>sr", "<cmd>SnipRun<CR>", desc = "Run Snippet" },
    -- { "n", "<leader>sr", "<cmd>SnipRunOperator<CR>", desc = "Run Snippet" },
  },
  config = function()
    require("sniprun").setup({
      -- your options
    })
  end,
}

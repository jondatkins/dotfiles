-- if true then
--   return {}
-- end
return {
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
    },
  },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      transparent = true,
    },
  },
  {
    -- zenwritten, neobones, vimbones, rosebones, forestbones, nordbones
    -- tokyobones, seolbones, duckbones, zenburned, kanagawabones, randombones

    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    -- priority = 1000,
    -- config = function()
    --   vim.g.zenbones_darken_comments = 45
    --   vim.cmd.colorscheme("zenbones")
    -- end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
  {
    "Mofiqul/dracula.nvim",
  },
  -- Using Lazy
  {
    "navarasu/onedark.nvim",
  },
  {
    "elvessousa/sobrio",
  },
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    {
      "catppuccin/nvim",
      opts = {
        flavour = "macchiato",
        transparent_background = true,
      },
    },
  },
  -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

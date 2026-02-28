-- if true then
--   return {}
-- end
return {
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "zenbones-theme/zenbones.nvim",
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
  },
  {
    "folke/tokyonight.nvim",
  },
  {
    "catppuccin/nvim",
  },
  -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "carbonfox",
    },
  },
}

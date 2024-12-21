return {
  "saghen/blink.cmp",
  version = "v0.*",
  -- !Important! Make sure you're using the latest release of LuaSnip
  -- `main` does not work at the moment
  dependencies = { "L3MON4D3/LuaSnip", version = "v2.*", "rafamadriz/friendly-snippets" },
  opts = {
    keymap = { preset = "super-tab" },
    snippets = {
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet)
      end,
      active = function(filter)
        if filter and filter.direction then
          return require("luasnip").jumpable(filter.direction)
        end
        return require("luasnip").in_snippet()
      end,
      jump = function(direction)
        require("luasnip").jump(direction)
      end,
    },
    sources = {
      compat = { "luasnip" },
      default = { "lsp", "path", "luasnip", "buffer" },
    },
    -- Completions for checkboxes and callouts, as described at:
    -- https://github.com/MeanderingProgrammer/render-markdown.nvim
    completion = {
      enabled_providers = { "lsp", "path", "snippets", "buffer", "markdown" },
    },
    providers = {
      markdown = { name = "RenderMarkdown", module = "render-markdown.integ.blink" },
      -- This is from linkarzu's dotfiles here
      -- https://github.com/linkarzu/dotfiles-latest/blob/main/neovim/neobean/lua/plugins/blink-cmp.lua
      luasnip = {
        name = "luasnip",
        enabled = true,
        module = "blink.compat.source",
        kind = "Snippet",
        score_offset = 900, -- the higher the number, the higher the priority
      },
      lsp = {
        name = "lsp",
        enabled = true,
        module = "blink.cmp.sources.lsp",
        kind = "LSP",
        score_offset = 1000, -- the higher the number, the higher the priority
      },
      -- Third class citizen mf always talking shit
      copilot = {
        name = "copilot",
        enabled = true,
        module = "blink-cmp-copilot",
        kind = "Copilot",
        score_offset = 0, -- the higher the number, the higher the priority
        async = true,
      },
    },
  },
}

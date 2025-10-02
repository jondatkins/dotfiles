-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/luasnip.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/luasnip.lua

-- This allows me to create my custom snippets
-- All you need to do, if using the lazyvim.org distro, is to enable the
-- coding.luasnip LazyExtra and then add this file

-- If you're a dotfiles scavenger, definitely watch this video (you're welcome)
-- https://youtu.be/FmHhonPjvvA?si=8NrcRWu4GGdmTzee

return {
  "L3MON4D3/LuaSnip",
  opts = function(_, opts)
    local ls = require("luasnip")

    -- Preserve existing opts from LazyVim
    opts = vim.tbl_deep_extend("force", opts, {
      history = true,
      delete_check_events = "TextChanged",
    })

    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    local f = ls.function_node
    -- some shorthands...
    local snip = ls.snippet
    local node = ls.snippet_node
    local text = ls.text_node
    local insert = ls.insert_node
    local func = ls.function_node
    local choice = ls.choice_node

    local dynamicn = ls.dynamic_node
    local date = function()
      return { os.date("%Y-%m-%d") }
    end
    local function clipboard()
      return vim.fn.getreg("+")
    end

    -- Custom snippets
    -- the "all" after ls.add_snippets("all" is the filetype, you can know a
    -- file filetype with :set ft
    -- Custom snippets

    -- #####################################################################
    --                            Markdown
    -- #####################################################################

    -- Helper function to create code block snippets
    local function create_code_block_snippet(lang)
      return s(lang, {
        t({ "```" .. lang, "" }),
        i(1),
        t({ "", "```" }),
      })
    end

    -- Define languages for code blocks
    local languages = {
      "txt",
      "lua",
      "sql",
      "go",
      "regex",
      "bash",
      "markdown",
      "markdown_inline",
      "yaml",
      "json",
      "jsonc",
      "cpp",
      "csv",
      "java",
      "javascript",
      "typescript",
      "python",
      "dockerfile",
      "html",
      "css",
      "templ",
      "php",
    }
    local fmt = require("luasnip.extras.fmt").fmt
    -- Generate snippets for all languages
    local snippets = {}

    for _, lang in ipairs(languages) do
      table.insert(snippets, create_code_block_snippet(lang))
    end
    -- extended_filetypes = {
    --   typescript = { "javascript" },
    --   typescriptreact = { "javascript" },
    --   javascriptreact = { "javascript" },
    -- },
    table.insert(
      snippets,
      s({
        trig = "chirpy",
        name = "Disable markdownlint and prettier for chirpy",
      }, {
        t({
          " ",
          "<!-- markdownlint-disable -->",
          "<!-- prettier-ignore-start -->",
          " ",
          "<!-- tip=green, info=blue, warning=yellow, danger=red -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          "",
          "{: .prompt-",
        }),
        -- In case you want to add a default value "tip" here, but I'm having
        -- issues with autosave
        -- i(2, "tip"),
        i(2),
        t({
          " }",
          " ",
          "<!-- prettier-ignore-end -->",
          "<!-- markdownlint-restore -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "markdownlint",
        name = "Add markdownlint disable and restore headings",
      }, {
        t({
          " ",
          "<!-- markdownlint-disable -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          " ",
          " ",
          "<!-- markdownlint-restore -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "prettierignore",
        name = "Add prettier ignore start and end headings",
      }, {
        t({
          " ",
          "<!-- prettier-ignore-start -->",
          " ",
          "> ",
        }),
        i(1),
        t({
          " ",
          " ",
          "<!-- prettier-ignore-end -->",
        }),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "link",
        name = "Add this -> []()",
      }, {
        t("["),
        i(1),
        t("]("),
        i(2),
        t(")"),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "linkt",
        name = 'Add this -> [](){:target="_blank"}',
      }, {
        t("["),
        i(1),
        t("]("),
        i(2),
        t('){:target="_blank"}'),
      })
    )

    table.insert(
      snippets,
      s({
        trig = "todo",
        name = "Add TODO: item",
      }, {
        t("<!-- TODO: "),
        i(1),
        t(" -->"),
      })
    )

    -- Paste clipboard contents in link section, move cursor to ()
    table.insert(
      snippets,
      s({
        trig = "linkclip",
        name = "Paste clipboard as .md link",
      }, {
        t("["),
        i(1),
        t("]("),
        f(clipboard, {}),
        t(")"),
      })
    )

    ls.add_snippets("markdown", snippets)

    -- #####################################################################
    --                         all the filetypes
    -- #####################################################################
    ls.add_snippets("all", {
      s({
        trig = "workflow",
        name = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),

      s({
        trig = "lam",
        name = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),

      s({
        trig = "mw25",
        name = "Add this -> lamw25wmal",
      }, {
        t("lamw25wmal"),
      }),
    })

    ls.add_snippets(nil, {
      all = {
        snip({
          trig = "date",
          namr = "Date",
          dscr = "Date in the form of YYYY-MM-DD",
        }, {
          func(date, {}),
        }),
      },
    })

    ls.add_snippets("markdown", {
      s(
        "javascript",
        fmt(
          [[
          ``` javascript
          {}
          ```
          ]],
          {
            i(1, "// js here"),
          }
        )
      ),
    })
    -- #####################################################################
    --                         bash scripts
    -- #####################################################################
    ls.add_snippets("sh", {
      s({
        trig = "shebang",
        name = "add bash shebang",
      }, {
        t("#!/usr/bin/env bash"),
      }),
    })

    -- I want js snippets in ts files too
    ls.filetype_extend("js", { "ts" })
    -- #####################################################################
    --                         javascript scripts
    -- #####################################################################
    ls.add_snippets("typescript", {
      s({
        trig = "hi",
        snippetType = "autosnippet",
      }, {
        t("Hello "),
        i(1, "world"),
      }),

      s({
        trig = "foreach",
        name = "array for each loop",
      }, t({ "forEach((value, index) => {", "// body of loop", "});" })),
      s(
        "if",
        fmt(
          [[
          if ({}){{

          }}
          ]],
          {
            i(1, "conditionHere"),
          }
        )
      ),
      s(
        "while",
        fmt(
          [[
          let i = 0;
          while(i < {}.length){{
           i++; 
          }}
          ]],
          {
            i(1, "array name"),
          }
        )
      ),
      s(
        "console",
        fmt(
          [[
            console.log(`{}`);
          ]],
          {
            i(1, "testMsg"),
          }
        )
      ),
      s(
        { trig = "consoledir" }, -- Context table, which controls snippet expansion
        { -- Table of snippet nodes
          t("console.dir(yourObjectHere, { depth: null, colors: true } );"),
        }
      ),
      s(
        "for",
        fmt(
          [[
          for(let i = 0; i < {}.length; i++){{
           // loop stuff here
          }}
          ]],
          {
            i(1, "array name"),
          }
        )
      ),
      s(
        "arrow",
        fmt(
          [[
          (elem, index) => {{
            {}
          }}
          ]],
          {
            i(1, "// body of arrow function"),
          }
        )
      ),

      s(
        "function",
        fmt(
          [[
          function foo() {{
            {}
          }}
          ]],
          {
            i(1, "// body of function"),
          }
        )
      ),

      s(
        "constructor",
        fmt(
          [[

          public val: T;
          constructor(val:T) {{
            {}
          }}
          ]],
          {
            i(1, "// set up instance variables here"),
          }
        )
      ),

      s(
        "interpolation",
        fmt(
          [[
          ${{{}}}
          ]],
          {
            i(1, "fooBar"),
          }
        )
      ),
    })
    return opts
  end,
}

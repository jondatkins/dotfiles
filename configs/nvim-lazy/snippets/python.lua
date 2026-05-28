local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("pp", {
    t("print("),
    i(1),
    t(")"),
  }),
  s("Foo", {
    t("Bar("),
    i(1),
    t(")"),
  }),
}

return {
  -- Example of a multiline text node
  s({ trig = "lines", dscr = "Demo: a text node with three lines." }, {
    t({ "Line 1", "Line 2", "Line 3" }),
  }),
  -- Combining text and insert nodes to create basic LaTeX commands
  s({ trig = "tt", dscr = "Expands 'tt' into '\texttt{}'" }, {
    t("\\texttt{"), -- remember: backslashes need to be escaped
    i(1),
    t("}"),
  }),
  -- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
  -- there is a much better, human-readable solution: ls.fmt, described shortly.
  s({ trig = "ff", dscr = "Expands 'ff' into '\frac{}{}'" }, {
    t("\\frac{"),
    i(1), -- insert node 1
    t("}{"),
    i(2), -- insert node 2
    t("}"),
  }),
}

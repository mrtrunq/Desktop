--🟩 [luasnip]

--⚪️ General
local ls = require("luasnip")
local s = ls.snippet     -- Shortcut
local i = ls.insert_node -- Insert
local t = ls.text_node   -- Text

ls.add_snippets("cs", {
    s("prop", {
        t("public "), i(1, "int"), t(" MyProperty"), t(" { get; set; }"),
    }),

    s("cw", {
        t("Console.WriteLine("), i(1, ""), t(");"),
    }),

    s("ctor", {
        t("public "), i(1, "Constructor"), t("()"),
        t({ "", "{" }),
        t({ "", "    " }),
        t({ "", "}" }),
    }),

    s("method", {
        t("public "), i(1, "void"), t(" Name"), t("()"),
        t({ "", "{" }),
        t({ "", "    " }),
        t({ "", "}" }),
    }),

    s("while", {
        t("while ("), i(1, ""), t(")"),
        t({ "", "{" }),
        t({ "", "    " }),
        t({ "", "}" }),
    }),

    s("if", {
        t("if ("), i(1, ""), t(")"),
        t({ "", "{" }),
        t({ "", "    " }),
        t({ "", "}" }),
    }),

    s("ie", {
        t("if ("), i(1, ""), t(")"),
        t({ "", "{" }),
        t({ "", "    " }),
        t({ "", "}" }),
        t({ "", "else" }),
        t({ "", "{" }),
        t({ "", "    " }),
        t({ "", "}" }),
    }),
})

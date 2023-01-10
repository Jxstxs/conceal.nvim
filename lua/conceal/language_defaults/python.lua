return {
    ["import"] = {
        enabled = true,
        conceal = "i",
        highlight = "include"
    },
    ["def"] = {
        enabled = true,
        conceal = "f",
        highlight = "keyword.function"
    },
    ["class"] = {
        enabled = true,
        conceal = "c",
        highlight = "keyword"
    },
    ["global"] = {
        enabled = true,
        conceal = "G",
        highlight = "keyword"
    },
    ["del"] = {
        enabled = true,
        conceal = "D",
        highlight = "keyword"
    },
    ["if"] = {
        enabled = true,
        conceal = "?",
        highlight = "conditional"
    },
    ["else"] = {
        enabled = true,
        conceal = "e",
        highlight = "conditional"
    },
    ["elif"] = {
        enabled = true,
        conceal = "e",
        highlight = "conditional"
    },
    ["pass"] = {
        enabled = true,
        conceal = "P",
        highlight = "keyword"
    },
    ["break"] = {
        enabled = true,
        conceal = "B",
        highlight = "keyword"
    },
    ["continue"] = {
        enabled = true,
        conceal = "C",
        highlight = "keyword"
    },
    ["return"] = {
        enabled = true,
        conceal = "R",
        highlight = "keyword"
    },
    ["yield"] = {
        enabled = true,
        conceal = "Y",
        highlight = "keyword"
    },
    ["for"] = {
        enabled = true,
        conceal = "F",
        highlight = "repeat"
    },
    ["while"] = {
        enabled = true,
        conceal = "W",
        highlight = "repeat"
    },
    ["with"] = {
        enabled = true,
        conceal = "w",
        highlight = "keyword"
    },
    ["lambda"] = {
        enabled = true,
        conceal = "λ",
        highlight = "include"
    },
    ["assert"] = {
        enabled = true,
        -- same symbol as "if", but context is different:
        -- no trailing ':', won't be used in ternary statements.
        conceal = "?",
        highlight = "keyword"
    },
    ["and"] = {
        enabled = true,
        conceal = "&",
        highlight = "keyword.operator"
    },
    ["or"] = {
        enabled = true,
        conceal = "|",
        highlight = "keyword.operator"
    },
    ["not"] = {
        enabled = true,
        conceal = "!",
        highlight = "keyword.operator"
    },
    ["from_import"] = {
        enabled = true,
        conceal = "f",
        highlight = "include"
    },
    ["from_yield"] = {
        enabled = true,
        conceal = "F",
        highlight = "keyword"
    },
    ["print"] = {
        enabled = true,
        conceal = "p",
        highlight = "function.builtin"
    },
}

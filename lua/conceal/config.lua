local language_defaults = require("conceal.language_defaults")

return {
    --[[ ["language"] = {
        enabled = bool,
        ["keyword"] = {
            enabled     = bool,
            conceal     = string,
            highlight   = string
        }
    } ]]

    ["lua"] = {
        enabled = true,
        keywords = {
            ["require"] = {
                enabled = true,
                conceal = "r",
                highlight = "function.builtin"
            },
            ["local"] = {
                enabled = true,
                conceal = "l",
                highlight = "keyword"
            },
            ["function"] = {
                enabled = true,
                conceal = "f",
                highlight = "keyword.function"
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
            ["elseif"] = {
                enabled = true,
                conceal = "e",
                highlight = "conditional"
            },
            ["for"] = {
                enabled = true,
                conceal = "F",
                highlight = "repeat"
            },
            ["return"] = {
                enabled = true,
                conceal = "R",
                highlight = "keyword.function"
            },
            ["and"] = {
                enabled = true,
                conceal = "&",
                highlight = "keyword.function"
            },
            ["end"] = {
                enabled = true,
                conceal = "E",
                highlight = "keyword.function"
            },
            ["then"] = {
                enabled = true,
                conceal = "t",
                highlight = "conditional"
            },
            ["do"] = {
                enabled = true,
                conceal = "d",
                highlight = "repeat"
            },
            ["in"] = {
                enabled = true,
                conceal = "i",
                highlight = "keyword"
            },
        }
    },
    ["c"] = {
        enabled = true,
        keywords = {
            ["char_datatype"] = {
                enabled = true,
                conceal = "c",
                highlight = "type"
            },
            ["const"] = {
                enabled = true,
                conceal = "C",
                highlight = "keyword"
            }
        }
    },

    ["python"] = {
        enabled = true,
        keywords = language_defaults.python,
    },
}

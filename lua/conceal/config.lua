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
        ["require"] = {
            enabled = true,
            conceal = "rEq",
            highlight = "TSNote"
        },
    }
}

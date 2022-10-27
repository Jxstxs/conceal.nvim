return {
    --- generates a ts querry for a specific keyword
    ---@param options table contains the highlight group and the conceal string
    ---@return string the generated querry
    ["keyword"] = function (options)
        return string.format("treesitter querry", options.highlight, options.conceal)
    end
}

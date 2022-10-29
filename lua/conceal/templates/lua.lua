return {
    ["require"] = function(options)
        return string.format('((function_call name: (identifier) @%s (#eq? @%s "require")) (#set! conceal "%s"))',options.highlight, options.highlight, options.conceal)
    end,
    ["function"] = function(options)
        return string.format('(("function" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["local"] = function(options)
        return string.format('(("local" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["if"] = function (options)
        return string.format('(("if" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["else"] = function (options)
        return string.format('(("else" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["elseif"] = function (options)
        return string.format('(("elseif" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["for"] = function (options)
        return string.format('(("for" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["return"] = function (options)
        return string.format('(("return" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["and"] = function (options)
        return string.format('(("and" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["end"] = function (options)
        return string.format('(("end" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["then"] = function (options)
        return string.format('(("then" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["do"] = function (options)
        return string.format('(("do" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
    ["in"] = function (options)
        return string.format('(("in" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
    end,
}

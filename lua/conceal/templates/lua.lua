return {
    ["require"] = function(options)
        return string.format('((function_call name: (identifier) @%s (#eq? @%s "require")) (#set! conceal "%s"))', options.highlight, options.conceal)
    end
}

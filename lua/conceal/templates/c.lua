return {
    ["char_datatype"] = function(options)
        return string.format('(((declaration type: (primitive_type) @%s) (#eq? @%s "char")) (#set! conceal "%s"))',options.highlight, options.highlight, options.conceal)
    end,
    ["const"] = function(options)
        return string.format('(((declaration (type_qualifier) @%s) (#eq? @%s "const")) (#set! conceal "%s"))', options.highlight, options.highlight, options.conceal)
    end
}

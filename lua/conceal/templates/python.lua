local utils = require("conceal.templates.utils")

-- Don't conceal:
-- as
-- in
-- is
-- nonlocal
-- try/except/finally/raise
-- async/await

-- some keywords have multiple contexts:
-- from * import *      vs yield from   (handled below)
-- if/else vs for/else  vs try/else     (else always goes to same token)
-- import * as          vs with * as    (as is not concealed)

local keywords = {}
for _, keyword in ipairs({
    "import",
    "def",
    "class",
    "global",
    "del",
    "if",
    "else",
    "elif",
    "pass",
    "break",
    "continue",
    "return",
    "yield",
    "for",
    "while",
    "with",
    "lambda",
    "assert",
    "and",
    "or",
    "not",
}) do
    keywords[keyword] = utils.query_builder(keyword)
end

-- `from` has two valid meanings: part of from import or part of yield from
keywords["from_import"] = function(options)
    return string.format('((import_from_statement ("from") @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
end
keywords["from_yield"] = function(options)
    return string.format('((yield ("from") @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
end

-- some syntax sugar for common builtins
keywords["print"] = function(options)
    return string.format('((call function: (identifier) @%s (#eq? @%s "print")) (#set! conceal "%s"))', options.highlight, options.highlight, options.conceal)
end

return keywords

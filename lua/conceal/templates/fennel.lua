return {
  ["lambda"] = function(options)
    return string.format('(("lambda" @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
  end
}

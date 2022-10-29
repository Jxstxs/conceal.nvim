# conceal.nvim

A Neovim Plugin which uses Tree-sitter to conceal typical boiler Code

## TL;DR

* Conceals Boiler Code
* Keywords can be disabled (all Keywords are enabled by default)
* Conceal Chars can be defined (defaults are given)
* Highlight group can be defined (uses the default groups)

<!-- ## Demo -->

<!-- ![Demo](./demo-keystack.gif) -->

## Usage/Examples

```lua
local conceal = require("conceal")

-- should be run before .generate_conceals to use user Configuration
conceal.setup({
    --[[ ["language"] = {
        enabled = bool,
        ["keyword"] = {
            enabled     = bool,
            conceal     = string,
            highlight   = string
        }
    } ]]
    ["lua"] = {
      ["local"] = {
        enabled = false -- to disable concealing for "local"
      },
      ["return"] = {
        conceal = "R" -- to set the concealing to "R"
      },
      ["for"] = {
        highlight = "keyword" -- to set the Highlight group to "@keyword"
      }
    },
    ["language"] = {
      enabled = false -- to disable the whole language
    }
})

-- generate the scm queries
conceal.generate_conceals()

-- bind a <leader>tc to toggle the concealing level
vim.keymap.set("n", "<leader>tc", function()
  require("conceal").toggle_conceal()
end, { silent = true})
```

## Features

- Conceal Boilerplate Code with a given Highlight group and conceal char

<!-- ## Documentation -->

<!-- Type `:help conceal` in Neovim -->

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "Jxstxs/conceal.nvim" }
```

<!-- ## Changelog -->

<!-- * to configure your mappings you can now also use `require("keystack").setup({...})` -->
<!-- * you can define function which will get executed when pushing or popping the keys from the stack -->

## Contributing

Contributions are always welcome! Just remember to be Kind

## License

This Project uses the MIT License, as mentioned [here](./LICENSE).

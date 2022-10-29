# conceal.nvim

A Neovim Plugin which uses Tree-sitter to conceal typical boiler Code

## TL;DR

* Conceals Boiler Code with Tree-sitter
* Keywords can be disabled (all Keywords are enabled by default)
* Conceal Chars can be defined (defaults are given)
* Highlight group can be defined (uses the default groups)

## Demo

<table>
  <tr>
    <td>
      ![Demo Concealed](https://user-images.githubusercontent.com/29977579/198855339-dead15ef-e9cb-482c-a436-165e33016da4.png)
    </td>
    <td>
      ![Demo non Concealed](https://user-images.githubusercontent.com/29977579/198855340-0c953c6a-45db-4ff6-bb4b-49a8bb0b9a35.png)
    </td>
  </tr>
</table>

## Installation

Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "Jxstxs/conceal.nvim" }
```

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
-- only need to be run when the Configuration changes
conceal.generate_conceals()

-- bind a <leader>tc to toggle the concealing level
vim.keymap.set("n", "<leader>tc", function()
  require("conceal").toggle_conceal()
end, { silent = true})
```

## Features

- Conceal Boilerplate Code with a given Highlight group and conceal char
- Function to toggle the Concealing Level

<!-- ## Changelog -->

## Contributing

Contributions are always welcome! Just remember to be Kind

## License

This Project uses the MIT License, as mentioned [here](./LICENSE).

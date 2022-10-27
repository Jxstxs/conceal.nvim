--- checks treesitter requirement
local status, _ = pcall(require, "nvim-treesitter")
if not status then
    print("[conceal.nvim] ERROR: couldnt require treesitter!")
    return
end

local M = {}

local _default = vim.o.conceallevel
local config = require("conceal.config")

--- Sets up the wanted languages
---@param opts table user specific values
M.setup = function(opts)
    config = vim.tbl_deep_extend("force", config, opts)
end

--- Toggles the State of the Conceal Level
---@param level integer to which level it should be set (could be nil, then it uses the pre defined value)
M.toggle_conceal = function(level)
    local state = vim.o.conceallevel
    if state ~= 0 then
        vim.o.conceallevel = 0
    else
        vim.o.conceallevel = level or _default
    end
end

--- generates the treesitter files
M.generate_conceals = function()
    -- checks cache for last state
    -- loops through templates
    -- formats given keywords
    -- write to scm file
    -- write states to cache file so no regenerating for the same thing
end

return M

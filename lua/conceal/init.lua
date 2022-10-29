--- checks treesitter requirement
local status, _ = pcall(require, "nvim-treesitter")
if not status then
    print("[conceal.nvim] ERROR: couldnt require treesitter!")
    return
end

local M = {}

local _default = vim.o.conceallevel
local config = require("conceal.config")

local _str_to_bool = {
    ["true"] = function() return true end,
    ["false"] = function() return false end,
}

--- splits a given string by given string
---@param inp string the string to be split
---@param sep string the seperator
---@return table the splitted line
local split_by = function(inp, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inp, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

--- reads the cached states of the keywords
local _read_cached_states = function ()
end

--- write the currently generated states to the cache
local _write_cached_states = function ()

--- safely requires a template
---@param module string the template to require
---@return table|nil the given templates
local safe_require = function(module)
    local status, mod = pcall(require, module)
    if status then
        return mod
    else
        return nil
    end
end

--- writes the generated querries to a scm file
---@param language string the language name
---@param content table the generated querries
local write_to_file = function(language, content)
    local file_path = vim.fn.stdpath("config") .. "/after/queries/" .. language .. "/highlights.scm"
    local file = io.open(file_path, "w")
    if file ~= nil then
        file:write(";; extends \n\n")
        for _, query in pairs(content) do
            file:write(query, "\n")
        end
        file:close()
    end
end

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
    -- reads cached states
    -- loops through templates
    -- formats given keywords
    -- write to scm file
    -- write states to cache file so no regenerating for the same thing
end

return M

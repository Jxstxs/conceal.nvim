--- checks treesitter requirement
local status, _ = pcall(require, "nvim-treesitter")
if not status then
    print("[conceal.nvim] ERROR: couldnt require treesitter!")
    return
end

local M = {}
--- Sets up the wanted languages
---@param opts table user specific values
M.setup = function(opts)
end
--- Toggles the State of the Conceal Level
---@param level integer to which level it should be set (could be nil, then it uses the pre defined value)
M.toggle_conceal = function(level)
end
--- generates the treesitter files
M.generate_conceals = function()
end
return M
